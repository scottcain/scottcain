#!/bin/bash
set -euo pipefail

FILE=(
'n2_nomito.fa'
'vc_2010_nomito.fa'
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

cd /data

SAMFILE=()
for i {1..${#FILE[@]}}
do
    minimap2 --eqx -ax asm5 -a $FILE[i-1] $FILE[i]  > "r_$LABEL[i-1]_q_$LABEL[i].sam"
    $SAMFILE[i-1]="r_$LABEL[i-1]_q_$LABEL[i].sam"
done

set +euo pipefail
conda init bash
source /root/.bashrc
conda activate syri_env
set -euo pipefail

mkdir tmp
cd tmp

OUTFILE=()
for i {1..${#FILE[@]}}
do
    syri -c $SAMFILE[i-1] -F S -r $FILE[i-1] -q $FILE[i] --prefix "$SAMFILE[i-1]_"
    $OUTFILE[i-1]="$SAMFILE[i-1]_syri.out" 
done

#construct geneomes.txt file on the fly and plotsr cmd
CMDSTR=""
for i {0..${#OUTFILE[@]}
do
    CMDSTR="$CMDSTR --sr $OUTFILE[i]"
done
for i {0..${#FILE[@]}}
do
    echo "$FILE[i]\t$LABEL[i]\n" >> genomes.txt
done

plotsr $CMDSTR --genomes genomes.txt

