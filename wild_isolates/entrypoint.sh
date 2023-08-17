#!/bin/bash
set -euo pipefail

FILE=(
'n2_nomito.fa'
'vc2010_nomito.fa'
'hawaiian_nomito.fa'
'hawaii.fa'
'wuhan.fa'
)

LABEL=(
'N2'
'VC2010'
'CB4856'
'hawaii'
'wuhan'
)
let LENGTH=${#FILE[@]}
let SHORT=$LENGTH-1

cd /data

SAMFILE=()
for (( i=1 ; i<=$SHORT ; i++  ))
do
    SAMFILE[i-1]="r_${LABEL[i-1]}_q_${LABEL[i]}.sam"
    minimap2 --eqx -ax asm5 -a ${FILE[i-1]} ${FILE[i]}  > ${SAMFILE[i-1]}
done

set +euo pipefail
conda init bash
source /root/.bashrc
conda activate syri_env
set -euo pipefail

OUTFILE=()
for (( i=1 ; i<=$SHORT ; i++  ))
do
    syri -c ${SAMFILE[i-1]} -F S -r ${FILE[i-1]} -q ${FILE[i]} --prefix "${SAMFILE[i-1]}_"
    OUTFILE[i-1]="${SAMFILE[i-1]}_syri.out" 
done

#construct geneomes.txt file on the fly and plotsr cmd
CMDSTR=""
rm genomes.txt
for (( i=0 ; i<=$SHORT-1 ; i++  )) 
do
    CMDSTR="${CMDSTR} --sr ${OUTFILE[i]}"
done
for (( i=0 ; i<=$SHORT ; i++  ))
do
    echo -e "${FILE[i]}\t${LABEL[i]}" >> genomes.txt
done

plotsr ${CMDSTR} --genomes genomes.txt

