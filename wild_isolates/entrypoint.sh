#!/bin/bash
set -euo pipefail

FILE=(
'n2_nomito.fa'
'vc2010_nomito.fa'
'hawaiian_nomito.fa'
'hawaii.fa'
'wuhan.fa'
'addisababa.fa'
'adelaide.fa'
'altadena.fa'
'amares.fa'
'auckland.fa'
'bristol.fa'
'hermanville.fa'
'lakeforestpark.fa'
'lisbon.fa'
'madagascar.fa'
'manuka.fa'
'paloalto.fa'
'perreux.fa'
'roxel.fa'
'saltlakecity.fa'
'sanfrancisco.fa'
'southampton.fa'
'ulupalakua.fa'
)

LABEL=(
'N2'
'VC2010'
'CB4856'
'hawaii'
'wuhan'
'addisababa'
'adelaide'
'altadena'
'amares'
'auckland'
'bristol'
'hermanville'
'lakeforestpark'
'lisbon'
'madagascar'
'manuka'
'paloalto'
'perreux'
'roxel'
'saltlakecity'
'sanfrancisco'
'southampton'
'ulupalakua'
)
let LENGTH=${#FILE[@]}
let SHORT=$LENGTH-1

cd /data

# clean up--remove everything but fastas
#rm -f *.sam *.vcf *.txt *.log *.summary *.out

SAMFILE=()
for (( i=1 ; i<=$SHORT ; i++  ))
do
    SAMFILE[i-1]="r_${LABEL[i-1]}_q_${LABEL[i]}.sam"
    PAFFILE="r_${LABEL[i-1]}_q_${LABEL[i]}.paf"
#    minimap2 --eqx -ax asm5 -a ${FILE[i-1]} ${FILE[i]}  > ${SAMFILE[i-1]}
    minimap2 -c ${FILE[i-1]} ${FILE[i]}  > ${PAFFILE}
done

set +euo pipefail
conda init bash
source /root/.bashrc
conda activate syri_env
set -euo pipefail

OUTFILE=()
for (( i=1 ; i<=$SHORT ; i++  ))
do
#    syri -c ${SAMFILE[i-1]} -F S -r ${FILE[i-1]} -q ${FILE[i]} --prefix "${SAMFILE[i-1]}_"
    OUTFILE[i-1]="${SAMFILE[i-1]}_syri.out" 
done

#construct geneomes.txt file on the fly and plotsr cmd
rm -f genomes.txt
CMDSTR=""
for (( i=0 ; i<=$SHORT-1 ; i++  )) 
do
    CMDSTR="${CMDSTR} --sr ${OUTFILE[i]}"
done
for (( i=0 ; i<=$SHORT ; i++  ))
do
    echo -e "${FILE[i]}\t${LABEL[i]}" >> genomes.txt
done

plotsr ${CMDSTR} -H 28 -W 15 --genomes genomes.txt -o plotsr.png


