#!/bin/bash

set -euo pipefail

cd /data

minimap2 --eqx -ax asm5 -a n2_nomito.fa vc2010_nomito.fa  > r_n2_q_vc2010.sam

set +euo pipefail
conda init bash
source /root/.bashrc
conda activate syri_env
set -euo pipefail

mkdir tmp
cd tmp

syri -c ../r_n2_q_vc2010.sam -F S -r ../n2_nomito.fa -q ../vc2010_nomito.fa

cat /genomes.txt

plotsr --sr syri.out --genomes /genomes.txt

