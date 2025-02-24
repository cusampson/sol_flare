#!/bin/bash
# --------------------
### Directives Section
# --------------------
#SBATCH --job-name=SOL_chr16_flare
#SBATCH --account=karnes
#SBATCH --partition=standard
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --time=24:00:00
# --------------------
### Code Section
# --------------------

java -Xmx450g -jar /xdisk/karnes/avicenti/programs/flare/flare.jar array=true probs=true ref=/xdisk/karnes/avicenti/reference_phased/gnomad.genomes.v3.1.2.hgdp_tgp.phased.chr16.vcf.gz.vcf.gz ref-panel=/xdisk/karnes/avicenti/programs/flare/panelRefInd.txt gt=/xdisk/karnes/avicenti/SOL/sol_phased/SOL_freeze3xup_chr-16_phased_hg38_label.nodups.vcf.gz map=/xdisk/karnes/avicenti/GRch38/plink.chr16.GRCh38.map out=/home/u26/cusampson/flare_env/SOL/flare_output/chr16_SOL_Ancestry

