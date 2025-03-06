#!/bin/bash
# --------------------
### Directives Section
# --------------------
#SBATCH --job-name=SOL_chr10_flare
#SBATCH --account=karnes
#SBATCH --partition=standard
#SBATCH --nodes=1
#SBATCH --ntasks=80
#SBATCH --time=24:00:00
# --------------------
### Code Section
# --------------------

module purge
module load autotools prun/2.2 gnu13/13.2.0 openmpi5/5.0.5 ohpc bcftools
module load java/21.0.1 
module list

java -Xmx450g -jar /xdisk/karnes/avicenti/programs/flare/flare.jar array=true probs=true ref=/xdisk/karnes/avicenti/reference_phased/gnomad.genomes.v3.1.2.hgdp_tgp.phased.chr10.vcf.gz.vcf.gz ref-panel=/xdisk/karnes/avicenti/programs/flare/panelRefInd.txt gt=/xdisk/karnes/avicenti/SOL/sol_phased/SOL_freeze3xup_chr-10_phased_hg38_label.nodups.vcf.gz map=/xdisk/karnes/avicenti/GRch38/plink.chr10.GRCh38.map out=/home/u26/cusampson/SOL/sol_flare_output/chr10_SOL_Ancestry

