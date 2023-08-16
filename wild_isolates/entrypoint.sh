#!/bin/bash

set -euo pipefail

cd /data

minimap2 --eqx -ax asm5 -a vc2010_nomito.fa n2_nomito.fa > q_n2_r_vc2010.sam

set +euo pipefail
conda init bash
source /root/.bashrc
conda activate syri_env
set -euo pipefail

syri -c q_n2_r_vc2010.sam -F S -q n2_nomito.fa -r vc2010_nomito.fa

cat /genomes.txt

plotsr --sr syri.out --genomes /genomes.txt

