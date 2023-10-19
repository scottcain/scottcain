#!/usr/bin/perl
use warnings;
use strict;

#keys are in my environment but to make generally useful, should allow on CLI
#my $ACCESS = $ARGV[0];
#my $SECRET = $ARGV[1];

my $URL="https://rgd.mcw.edu";
my $PATH="/jbrowse2/rn7.2/";

while (my $file = <DATA>) {
    chomp $file;

    my $underscore_file = $file;
    $underscore_file =~ s/ /_/g;
    $underscore_file =~ s/\(/\\\(/g;
    $underscore_file =~ s/\)/\\\)/g;

    warn $underscore_file;

    #  my $fullurl = $URL . $PATH . $file;
    #`curl -O $fullurl`;

    #    `mv $file $underscore_file`;

    #`aws s3 cp --acl public-read $underscore_file s3://agrjbrowse/MOD-jbrowses/human/`;

    #sleep 30;

}


__DATA__
Animal Diseases Related Genes.gff3.gz
Animal Diseases Related Genes.gff3.gz.tbi
Animal Diseases Related QTLs.gff3.gz
Animal Diseases Related QTLs.gff3.gz.tbi
Animal Diseases Related Strains.gff3.gz
Animal Diseases Related Strains.gff3.gz.tbi
Bacterial Infections and Mycoses Related Genes.gff3.gz
Bacterial Infections and Mycoses Related Genes.gff3.gz.tbi
Bacterial Infections and Mycoses Related QTLs.gff3.gz
Bacterial Infections and Mycoses Related QTLs.gff3.gz.tbi
Bacterial Infections and Mycoses Related Strains.gff3.gz
Bacterial Infections and Mycoses Related Strains.gff3.gz.tbi
Cardiovascular Diseases Related Genes.gff3.gz
Cardiovascular Diseases Related Genes.gff3.gz.tbi
Cardiovascular Diseases Related QTLs.gff3.gz
Cardiovascular Diseases Related QTLs.gff3.gz.tbi
Cardiovascular Diseases Related Strains.gff3.gz
Cardiovascular Diseases Related Strains.gff3.gz.tbi
Congenital-Hereditary-Neonatal Diseases and Abnormalities Related Genes.gff3.gz
Congenital-Hereditary-Neonatal Diseases and Abnormalities Related Genes.gff3.gz.tbi
Congenital-Hereditary-Neonatal Diseases and Abnormalities Related QTLs.gff3.gz
Congenital-Hereditary-Neonatal Diseases and Abnormalities Related QTLs.gff3.gz.tbi
Congenital-Hereditary-Neonatal Diseases and Abnormalities Related Strains.gff3.gz
Congenital-Hereditary-Neonatal Diseases and Abnormalities Related Strains.gff3.gz.tbi
Developmental Diseases Related Genes.gff3.gz
Developmental Diseases Related Genes.gff3.gz.tbi
Developmental Diseases Related QTLs.gff3.gz
Developmental Diseases Related QTLs.gff3.gz.tbi
Developmental Diseases Related Strains.gff3.gz
Developmental Diseases Related Strains.gff3.gz.tbi
Digestive System Diseases Related Genes.gff3.gz
Digestive System Diseases Related Genes.gff3.gz.tbi
Digestive System Diseases Related QTLs.gff3.gz
Digestive System Diseases Related QTLs.gff3.gz.tbi
Digestive System Diseases Related Strains.gff3.gz
Digestive System Diseases Related Strains.gff3.gz.tbi
Diseases of the Aged Related Genes.gff3.gz
Diseases of the Aged Related Genes.gff3.gz.tbi
Diseases of the Aged Related QTLs.gff3.gz
Diseases of the Aged Related QTLs.gff3.gz.tbi
Endocrine System Diseases Related Genes.gff3.gz
Endocrine System Diseases Related Genes.gff3.gz.tbi
Endocrine System Diseases Related QTLs.gff3.gz
Endocrine System Diseases Related QTLs.gff3.gz.tbi
Endocrine System Diseases Related Strains.gff3.gz
Endocrine System Diseases Related Strains.gff3.gz.tbi
Eye Diseases Related Genes.gff3.gz
Eye Diseases Related Genes.gff3.gz.tbi
Eye Diseases Related QTLs.gff3.gz
Eye Diseases Related QTLs.gff3.gz.tbi
Eye Diseases Related Strains.gff3.gz
Eye Diseases Related Strains.gff3.gz.tbi
Female Urogenital Diseases and Pregnancy Complications Related Genes.gff3.gz
Female Urogenital Diseases and Pregnancy Complications Related Genes.gff3.gz.tbi
Female Urogenital Diseases and Pregnancy Complications Related QTLs.gff3.gz
Female Urogenital Diseases and Pregnancy Complications Related QTLs.gff3.gz.tbi
Female Urogenital Diseases and Pregnancy Complications Related Strains.gff3.gz
Female Urogenital Diseases and Pregnancy Complications Related Strains.gff3.gz.tbi
Hemic and Lymphatic Diseases Related Genes.gff3.gz
Hemic and Lymphatic Diseases Related Genes.gff3.gz.tbi
Hemic and Lymphatic Diseases Related QTLs.gff3.gz
Hemic and Lymphatic Diseases Related QTLs.gff3.gz.tbi
Hemic and Lymphatic Diseases Related Strains.gff3.gz
Hemic and Lymphatic Diseases Related Strains.gff3.gz.tbi
Immune System Diseases Related Genes.gff3.gz
Immune System Diseases Related Genes.gff3.gz.tbi
Immune System Diseases Related QTLs.gff3.gz
Immune System Diseases Related QTLs.gff3.gz.tbi
Immune System Diseases Related Strains.gff3.gz
Immune System Diseases Related Strains.gff3.gz.tbi
Induced Disorders Related Genes.gff3.gz
Induced Disorders Related Genes.gff3.gz.tbi
Induced Disorders Related QTLs.gff3.gz
Induced Disorders Related QTLs.gff3.gz.tbi
Induced Disorders Related Strains.gff3.gz
Induced Disorders Related Strains.gff3.gz.tbi
Male Urogenital Diseases Related Genes.gff3.gz
Male Urogenital Diseases Related Genes.gff3.gz.tbi
Male Urogenital Diseases Related QTLs.gff3.gz
Male Urogenital Diseases Related QTLs.gff3.gz.tbi
Male Urogenital Diseases Related Strains.gff3.gz
Male Urogenital Diseases Related Strains.gff3.gz.tbi
Mental Disorders Related Genes.gff3.gz
Mental Disorders Related Genes.gff3.gz.tbi
Mental Disorders Related QTLs.gff3.gz
Mental Disorders Related QTLs.gff3.gz.tbi
Mental Disorders Related Strains.gff3.gz
Mental Disorders Related Strains.gff3.gz.tbi
Musculoskeletal Diseases Related Genes.gff3.gz
Musculoskeletal Diseases Related Genes.gff3.gz.tbi
Musculoskeletal Diseases Related QTLs.gff3.gz
Musculoskeletal Diseases Related QTLs.gff3.gz.tbi
Musculoskeletal Diseases Related Strains.gff3.gz
Musculoskeletal Diseases Related Strains.gff3.gz.tbi
Neoplasms Related Genes.gff3.gz
Neoplasms Related Genes.gff3.gz.tbi
Neoplasms Related QTLs.gff3.gz
Neoplasms Related QTLs.gff3.gz.tbi
Neoplasms Related Strains.gff3.gz
Neoplasms Related Strains.gff3.gz.tbi
Nervous System Diseases Related Genes.gff3.gz
Nervous System Diseases Related Genes.gff3.gz.tbi
Nervous System Diseases Related QTLs.gff3.gz
Nervous System Diseases Related QTLs.gff3.gz.tbi
Nervous System Diseases Related Strains.gff3.gz
Nervous System Diseases Related Strains.gff3.gz.tbi
Nutritional and Metabolic Diseases Related Genes.gff3.gz
Nutritional and Metabolic Diseases Related Genes.gff3.gz.tbi
Nutritional and Metabolic Diseases Related QTLs.gff3.gz
Nutritional and Metabolic Diseases Related QTLs.gff3.gz.tbi
Nutritional and Metabolic Diseases Related Strains.gff3.gz
Nutritional and Metabolic Diseases Related Strains.gff3.gz.tbi
Occupational Diseases Related Genes.gff3.gz
Occupational Diseases Related Genes.gff3.gz.tbi
Otorhinolaryngologic Diseases Related Genes.gff3.gz
Otorhinolaryngologic Diseases Related Genes.gff3.gz.tbi
Otorhinolaryngologic Diseases Related QTLs.gff3.gz
Otorhinolaryngologic Diseases Related QTLs.gff3.gz.tbi
Otorhinolaryngologic Diseases Related Strains.gff3.gz
Otorhinolaryngologic Diseases Related Strains.gff3.gz.tbi
Parasitic Diseases Related Genes.gff3.gz
Parasitic Diseases Related Genes.gff3.gz.tbi
Parasitic Diseases Related QTLs.gff3.gz
Parasitic Diseases Related QTLs.gff3.gz.tbi
Parasitic Diseases Related Strains.gff3.gz
Parasitic Diseases Related Strains.gff3.gz.tbi
Respiratory Tract Diseases Related Genes.gff3.gz
Respiratory Tract Diseases Related Genes.gff3.gz.tbi
Respiratory Tract Diseases Related QTLs.gff3.gz
Respiratory Tract Diseases Related QTLs.gff3.gz.tbi
Respiratory Tract Diseases Related Strains.gff3.gz
Respiratory Tract Diseases Related Strains.gff3.gz.tbi
Signs and Symptoms Related Genes.gff3.gz
Signs and Symptoms Related Genes.gff3.gz.tbi
Signs and Symptoms Related QTLs.gff3.gz
Signs and Symptoms Related QTLs.gff3.gz.tbi
Signs and Symptoms Related Strains.gff3.gz
Signs and Symptoms Related Strains.gff3.gz.tbi
Skin and Connective Tissue Diseases Related Genes.gff3.gz
Skin and Connective Tissue Diseases Related Genes.gff3.gz.tbi
Skin and Connective Tissue Diseases Related QTLs.gff3.gz
Skin and Connective Tissue Diseases Related QTLs.gff3.gz.tbi
Skin and Connective Tissue Diseases Related Strains.gff3.gz
Skin and Connective Tissue Diseases Related Strains.gff3.gz.tbi
Stomatognathic Diseases Related Genes.gff3.gz
Stomatognathic Diseases Related Genes.gff3.gz.tbi
Stomatognathic Diseases Related QTLs.gff3.gz
Stomatognathic Diseases Related QTLs.gff3.gz.tbi
Stomatognathic Diseases Related Strains.gff3.gz
Stomatognathic Diseases Related Strains.gff3.gz.tbi
Virus Diseases Related Genes.gff3.gz
Virus Diseases Related Genes.gff3.gz.tbi
Virus Diseases Related QTLs.gff3.gz
Virus Diseases Related QTLs.gff3.gz.tbi
Virus Diseases Related Strains.gff3.gz
Virus Diseases Related Strains.gff3.gz.tbi
Wounds and Injuries Related Genes.gff3.gz
Wounds and Injuries Related Genes.gff3.gz.tbi
Wounds and Injuries Related QTLs.gff3.gz
Wounds and Injuries Related QTLs.gff3.gz.tbi
Aetiopathogenetic Role Related Genes.gff3.gz
Aetiopathogenetic Role Related Genes.gff3.gz.tbi
Antigen Related Genes.gff3.gz
Antigen Related Genes.gff3.gz.tbi
Antimicrobial Agent Related Genes.gff3.gz
Antimicrobial Agent Related Genes.gff3.gz.tbi
Antimutagen Related Genes.gff3.gz
Antimutagen Related Genes.gff3.gz.tbi
Biochemical Role Related Genes.gff3.gz
Biochemical Role Related Genes.gff3.gz.tbi
Biophysical Role Related Genes.gff3.gz
Biophysical Role Related Genes.gff3.gz.tbi
Epitope Related Genes.gff3.gz
Epitope Related Genes.gff3.gz.tbi
Fixative Related Genes.gff3.gz
Fixative Related Genes.gff3.gz.tbi
Glutathione Depleting Agent Related Genes.gff3.gz
Glutathione Depleting Agent Related Genes.gff3.gz.tbi
Growth Regulator Related Genes.gff3.gz
Growth Regulator Related Genes.gff3.gz.tbi
Hapten Related Genes.gff3.gz
Hapten Related Genes.gff3.gz.tbi
Immunomodulator Related Genes.gff3.gz
Immunomodulator Related Genes.gff3.gz.tbi
Inhibitor Related Genes.gff3.gz
Inhibitor Related Genes.gff3.gz.tbi
Insect Attractant Related Genes.gff3.gz
Insect Attractant Related Genes.gff3.gz.tbi
Mitogen Related Genes.gff3.gz
Mitogen Related Genes.gff3.gz.tbi
Molecular Messenger Related Genes.gff3.gz
Molecular Messenger Related Genes.gff3.gz.tbi
Osmolyte Related Genes.gff3.gz
Osmolyte Related Genes.gff3.gz.tbi
Pharmacological Role Related Genes.gff3.gz
Pharmacological Role Related Genes.gff3.gz.tbi
Physiological Role Related Genes.gff3.gz
Physiological Role Related Genes.gff3.gz.tbi
Poison Related Genes.gff3.gz
Poison Related Genes.gff3.gz.tbi
Prohormone Related Genes.gff3.gz
Prohormone Related Genes.gff3.gz.tbi
Provitamin Related Genes.gff3.gz
Provitamin Related Genes.gff3.gz.tbi
Specialized Proresolving Mediator Related Genes.gff3.gz
Specialized Proresolving Mediator Related Genes.gff3.gz.tbi
Xenobiotic Related Genes.gff3.gz
Xenobiotic Related Genes.gff3.gz.tbi
Ensembl (mRatBN7.2.110) Features.gff3.gz
Ensembl (mRatBN7.2.110) Features.gff3.gz.tbi
Ensembl (mRatBN7.2.110) Model.gff3.gz
Ensembl (mRatBN7.2.110) Model.gff3.gz.tbi
Rat mRatBN7.2 (rn7) Genes and Transcripts.gff3.gz
Rat mRatBN7.2 (rn7) Genes and Transcripts.gff3.gz.tbi
Rat mRatBN7.2 (rn7) Genes Only.gff3.gz
Rat mRatBN7.2 (rn7) Genes Only.gff3.gz.tbi
Rat mRatBN7.2 (rn7) Protein Domains.gff3.gz
Rat mRatBN7.2 (rn7) Protein Domains.gff3.gz.tbi
Rat mRatBN7.2 (rn7) QTLs.gff3.gz
Rat mRatBN7.2 (rn7) QTLs.gff3.gz.tbi
Rat mRatBN7.2 (rn7) Congenic Strains.gff3.gz
Rat mRatBN7.2 (rn7) Congenic Strains.gff3.gz.tbi
Rat mRatBN7.2 (rn7) Mutant Strains.gff3.gz
Rat mRatBN7.2 (rn7) Mutant Strains.gff3.gz.tbi
EVA Release 4.gff3.gz
EVA Release 4.gff3.gz.tbi
Rat mRatBN7.2 (rn7) Markers.gff3.gz
Rat mRatBN7.2 (rn7) Markers.gff3.gz.tbi
Rat mRatBN7.2 (rn7) Phenotypic Alleles Variants.gff3.gz
Rat mRatBN7.2 (rn7) Phenotypic Alleles Variants.gff3.gz.tbi
R_Adrenal_Gland_F1_ATAC_SD_s1.bed.gz
R_Adrenal_Gland_F1_ATAC_SD_s1.bed.gz.tbi
R_Adrenal_Gland_F2_ATAC_SD_s1.bed.gz
R_Adrenal_Gland_F2_ATAC_SD_s1.bed.gz.tbi
R_Amygdala_F1_ATAC_SD_s1.bed.gz
R_Amygdala_F1_ATAC_SD_s1.bed.gz.tbi
R_Amygdala_F2_ATAC_SD_s1.bed.gz
R_Amygdala_F2_ATAC_SD_s1.bed.gz.tbi
R_Auditory_Cortex_F1_ATAC_SD_s1.bed.gz
R_Auditory_Cortex_F1_ATAC_SD_s1.bed.gz.tbi
R_Auditory_Cortex_F2_ATAC_SD_s1.bed.gz
R_Auditory_Cortex_F2_ATAC_SD_s1.bed.gz.tbi
R_Cerebellum_F1_ATAC_SD_s1.bed.gz
R_Cerebellum_F1_ATAC_SD_s1.bed.gz.tbi
R_Cerebellum_F2_ATAC_SD_s1.bed.gz
R_Cerebellum_F2_ATAC_SD_s1.bed.gz.tbi
R_Cerebellum_M3_ATAC_SD_s1.bed.gz
R_Cerebellum_M3_ATAC_SD_s1.bed.gz.tbi
R_Cerebellum_M4_ATAC_SD_s1.bed.gz
R_Cerebellum_M4_ATAC_SD_s1.bed.gz.tbi
R_Epididymis_M3_ATAC_SD_s1.bed.gz
R_Epididymis_M3_ATAC_SD_s1.bed.gz.tbi
R_Epididymis_M4_ATAC_SD_s1.bed.gz
R_Epididymis_M4_ATAC_SD_s1.bed.gz.tbi
R_Heart_F1_ATAC_SD_s1.bed.gz
R_Heart_F1_ATAC_SD_s1.bed.gz.tbi
R_Heart_F2_ATAC_SD_s1.bed.gz
R_Heart_F2_ATAC_SD_s1.bed.gz.tbi
R_Heart_M3_ATAC_SD_s1.bed.gz
R_Heart_M3_ATAC_SD_s1.bed.gz.tbi
R_Heart_M4_ATAC_SD_s1.bed.gz
R_Heart_M4_ATAC_SD_s1.bed.gz.tbi
R_Hippocampus_F1_ATAC_SD_s1.bed.gz
R_Hippocampus_F1_ATAC_SD_s1.bed.gz.tbi
R_Hippocampus_F2_ATAC_SD_s1.bed.gz
R_Hippocampus_F2_ATAC_SD_s1.bed.gz.tbi
R_Hippocampus_M3_ATAC_SD_s1.bed.gz
R_Hippocampus_M3_ATAC_SD_s1.bed.gz.tbi
R_Hippocampus_M4_ATAC_SD_s1.bed.gz
R_Hippocampus_M4_ATAC_SD_s1.bed.gz.tbi
R_Hypothalamus_F1_ATAC_SD_s1.bed.gz
R_Hypothalamus_F1_ATAC_SD_s1.bed.gz.tbi
R_Hypothalamus_F2_ATAC_SD_s1.bed.gz
R_Hypothalamus_F2_ATAC_SD_s1.bed.gz.tbi
R_Hypothalamus_M3_ATAC_SD_s1.bed.gz
R_Hypothalamus_M3_ATAC_SD_s1.bed.gz.tbi
R_Hypothalamus_M4_ATAC_SD_s1.bed.gz
R_Hypothalamus_M4_ATAC_SD_s1.bed.gz.tbi
R_Ileum_F1_ATAC_SD_s1.bed.gz
R_Ileum_F1_ATAC_SD_s1.bed.gz.tbi
R_Ileum_F2_ATAC_SD_s1.bed.gz
R_Ileum_F2_ATAC_SD_s1.bed.gz.tbi
R_Kidney_F1_ATAC_SD_s1.bed.gz
R_Kidney_F1_ATAC_SD_s1.bed.gz.tbi
R_Kidney_F2_ATAC_SD_s1.bed.gz
R_Kidney_F2_ATAC_SD_s1.bed.gz.tbi
R_Kidney_M3_ATAC_SD_s1.bed.gz
R_Kidney_M3_ATAC_SD_s1.bed.gz.tbi
R_Kidney_M4_ATAC_SD_s1.bed.gz
R_Kidney_M4_ATAC_SD_s1.bed.gz.tbi
R_Liver_F1_ATAC_SD_s1.bed.gz
R_Liver_F1_ATAC_SD_s1.bed.gz.tbi
R_Liver_F2_ATAC_SD_s1.bed.gz
R_Liver_F2_ATAC_SD_s1.bed.gz.tbi
R_Liver_M3_ATAC_SD_s1.bed.gz
R_Liver_M3_ATAC_SD_s1.bed.gz.tbi
R_Liver_M4_ATAC_SD_s1.bed.gz
R_Liver_M4_ATAC_SD_s1.bed.gz.tbi
R_Lung_F1_ATAC_SD_s1.bed.gz
R_Lung_F1_ATAC_SD_s1.bed.gz.tbi
R_Lung_F2_ATAC_SD_s1.bed.gz
R_Lung_F2_ATAC_SD_s1.bed.gz.tbi
R_Lung_M3_ATAC_SD_s1.bed.gz
R_Lung_M3_ATAC_SD_s1.bed.gz.tbi
R_Lung_M4_ATAC_SD_s1.bed.gz
R_Lung_M4_ATAC_SD_s1.bed.gz.tbi
R_Motor_Cortex_F1_ATAC_SD_s1.bed.gz
R_Motor_Cortex_F1_ATAC_SD_s1.bed.gz.tbi
R_Motor_Cortex_F2_ATAC_SD_s1.bed.gz
R_Motor_Cortex_F2_ATAC_SD_s1.bed.gz.tbi
R_Olfactory_Bulb_F1_ATAC_SD_s1.bed.gz
R_Olfactory_Bulb_F1_ATAC_SD_s1.bed.gz.tbi
R_Olfactory_Bulb_F2_ATAC_SD_s1.bed.gz
R_Olfactory_Bulb_F2_ATAC_SD_s1.bed.gz.tbi
R_Olfactory_Bulb_M3_ATAC_SD_s1.bed.gz
R_Olfactory_Bulb_M3_ATAC_SD_s1.bed.gz.tbi
R_Olfactory_Bulb_M4_ATAC_SD_s1.bed.gz
R_Olfactory_Bulb_M4_ATAC_SD_s1.bed.gz.tbi
R_Ovary_F1_ATAC_SD_s1.bed.gz
R_Ovary_F1_ATAC_SD_s1.bed.gz.tbi
R_Ovary_F2_ATAC_SD_s1.bed.gz
R_Ovary_F2_ATAC_SD_s1.bed.gz.tbi
R_Pancreas_F1_ATAC_SD_s1.bed.gz
R_Pancreas_F1_ATAC_SD_s1.bed.gz.tbi
R_Pancreas_F2_ATAC_SD_s1.bed.gz
R_Pancreas_F2_ATAC_SD_s1.bed.gz.tbi
R_Pancreas_M3_ATAC_SD_s1.bed.gz
R_Pancreas_M3_ATAC_SD_s1.bed.gz.tbi
R_Pancreas_M4_ATAC_SD_s1.bed.gz
R_Pancreas_M4_ATAC_SD_s1.bed.gz.tbi
R_Prefrontal_Cortex_F1_ATAC_SD_s1.bed.gz
R_Prefrontal_Cortex_F1_ATAC_SD_s1.bed.gz.tbi
R_Prefrontal_Cortex_F2_ATAC_SD_s1.bed.gz
R_Prefrontal_Cortex_F2_ATAC_SD_s1.bed.gz.tbi
R_Primary_Visual_Cortex_F1_ATAC_SD_s1.bed.gz
R_Primary_Visual_Cortex_F1_ATAC_SD_s1.bed.gz.tbi
R_Primary_Visual_Cortex_F2_ATAC_SD_s1.bed.gz
R_Primary_Visual_Cortex_F2_ATAC_SD_s1.bed.gz.tbi
R_Somatosensory_Cortex_F1_ATAC_SD_s1.bed.gz
R_Somatosensory_Cortex_F1_ATAC_SD_s1.bed.gz.tbi
R_Somatosensory_Cortex_F2_ATAC_SD_s1.bed.gz
R_Somatosensory_Cortex_F2_ATAC_SD_s1.bed.gz.tbi
R_Spermaduct_M3_ATAC_SD_s1.bed.gz
R_Spermaduct_M3_ATAC_SD_s1.bed.gz.tbi
R_Spermaduct_M4_ATAC_SD_s1.bed.gz
R_Spermaduct_M4_ATAC_SD_s1.bed.gz.tbi
R_Spleen_F1_ATAC_SD_s1.bed.gz
R_Spleen_F1_ATAC_SD_s1.bed.gz.tbi
R_Spleen_F2_ATAC_SD_s1.bed.gz
R_Spleen_F2_ATAC_SD_s1.bed.gz.tbi
R_Spleen_M3_ATAC_SD_s1.bed.gz
R_Spleen_M3_ATAC_SD_s1.bed.gz.tbi
R_Spleen_M4_ATAC_SD_s1.bed.gz
R_Spleen_M4_ATAC_SD_s1.bed.gz.tbi
R_Striatum_F1_ATAC_SD_s1.bed.gz
R_Striatum_F1_ATAC_SD_s1.bed.gz.tbi
R_Striatum_F2_ATAC_SD_s1.bed.gz
R_Striatum_F2_ATAC_SD_s1.bed.gz.tbi
R_Testis_M3_ATAC_SD_s1.bed.gz
R_Testis_M3_ATAC_SD_s1.bed.gz.tbi
R_Testis_M4_ATAC_SD_s1.bed.gz
R_Testis_M4_ATAC_SD_s1.bed.gz.tbi
R_Thalamus_F1_ATAC_SD_s1.bed.gz
R_Thalamus_F1_ATAC_SD_s1.bed.gz.tbi
R_Thalamus_F2_ATAC_SD_s1.bed.gz
R_Thalamus_F2_ATAC_SD_s1.bed.gz.tbi
R_Thymus_F1_ATAC_SD_s1.bed.gz
R_Thymus_F1_ATAC_SD_s1.bed.gz.tbi
R_Thymus_F2_ATAC_SD_s1.bed.gz
R_Thymus_F2_ATAC_SD_s1.bed.gz.tbi
R_Thymus_M3_ATAC_SD_s1.bed.gz
R_Thymus_M3_ATAC_SD_s1.bed.gz.tbi
R_Thymus_M4_ATAC_SD_s1.bed.gz
R_Thymus_M4_ATAC_SD_s1.bed.gz.tbi
R_Denervated_Gastrocnemius_Muscle_ChIP_H3K27Ac_s6.bed.sorted.bed.gz
R_Denervated_Gastrocnemius_Muscle_ChIP_H3K27Ac_s6.bed.sorted.bed.gz.tbi
R_Denervated_Gastrocnemius_Muscle_ChIP_inputDNA_s6.bed.sorted.bed.gz
R_Denervated_Gastrocnemius_Muscle_ChIP_inputDNA_s6.bed.sorted.bed.gz.tbi
R_Gastrocnemius_Muscle_ChIP_H3K27Ac_s6.bed.sorted.bed.gz
R_Gastrocnemius_Muscle_ChIP_H3K27Ac_s6.bed.sorted.bed.gz.tbi
R_Gastrocnemius_Muscle_ChIP_inputDNA_s6.bed.sorted.bed.gz
R_Gastrocnemius_Muscle_ChIP_inputDNA_s6.bed.sorted.bed.gz.tbi
R_Liver1_ChIP_CTCF_s1.bed.sorted.bed.gz
R_Liver1_ChIP_CTCF_s1.bed.sorted.bed.gz.tbi
R_Liver1_ChIP_H3K27ac_Hsd:SD_s5.bed.sorted.bed.gz
R_Liver1_ChIP_H3K27ac_Hsd:SD_s5.bed.sorted.bed.gz.tbi
R_Liver1_ChIP_H3K27me3_Hsd:SD_s5.bed.sorted.bed.gz
R_Liver1_ChIP_H3K27me3_Hsd:SD_s5.bed.sorted.bed.gz.tbi
R_Liver1_ChIP_H3K4me1_Hsd:SD_s5.bed.sorted.bed.gz
R_Liver1_ChIP_H3K4me1_Hsd:SD_s5.bed.sorted.bed.gz.tbi
R_Liver1_ChIP_H3K4me3_Hsd:SD_s5.bed.sorted.bed.gz
R_Liver1_ChIP_H3K4me3_Hsd:SD_s5.bed.sorted.bed.gz.tbi
R_Liver1_ChIP_inputDNA_s1.bed.sorted.bed.gz
R_Liver1_ChIP_inputDNA_s1.bed.sorted.bed.gz.tbi
R_Liver2_ChIP_CTCF_s1.bed.sorted.bed.gz
R_Liver2_ChIP_CTCF_s1.bed.sorted.bed.gz.tbi
R_Liver2_ChIP_H3K27ac_Hsd:SD_s5.bed.sorted.bed.gz
R_Liver2_ChIP_H3K27ac_Hsd:SD_s5.bed.sorted.bed.gz.tbi
R_Liver2_ChIP_H3K27me3_Hsd:SD_s5.bed.sorted.bed.gz
R_Liver2_ChIP_H3K27me3_Hsd:SD_s5.bed.sorted.bed.gz.tbi
R_Liver2_ChIP_H3K4me1_Hsd:SD_s5.bed.sorted.bed.gz
R_Liver2_ChIP_H3K4me1_Hsd:SD_s5.bed.sorted.bed.gz.tbi
R_Liver2_ChIP_H3K4me3_Hsd:SD_s5.bed.sorted.bed.gz
R_Liver2_ChIP_H3K4me3_Hsd:SD_s5.bed.sorted.bed.gz.tbi
R_Liver2_ChIP_inputDNA_s1.bed.sorted.bed.gz
R_Liver2_ChIP_inputDNA_s1.bed.sorted.bed.gz.tbi
R_Liver3_ChIP_H3K27ac_Hsd:SD_s5.bed.sorted.bed.gz
R_Liver3_ChIP_H3K27ac_Hsd:SD_s5.bed.sorted.bed.gz.tbi
R_Liver3_ChIP_H3K27me3_Hsd:SD_s5.bed.sorted.bed.gz
R_Liver3_ChIP_H3K27me3_Hsd:SD_s5.bed.sorted.bed.gz.tbi
R_Liver3_ChIP_H3K4me1_Hsd:SD_s5.bed.sorted.bed.gz
R_Liver3_ChIP_H3K4me1_Hsd:SD_s5.bed.sorted.bed.gz.tbi
R_Liver3_ChIP_H3K4me3_Hsd:SD_s5.bed.sorted.bed.gz
R_Liver3_ChIP_H3K4me3_Hsd:SD_s5.bed.sorted.bed.gz.tbi
R_Liver_F1_ChIP_H3K27ac_Crl:WI_s4.bed.sorted.bed.gz
R_Liver_F1_ChIP_H3K27ac_Crl:WI_s4.bed.sorted.bed.gz.tbi
R_Liver_F1_ChIP_H3K4me1_Crl:WI_s4.bed.sorted.bed.gz
R_Liver_F1_ChIP_H3K4me1_Crl:WI_s4.bed.sorted.bed.gz.tbi
R_Liver_F2_ChIP_H3K27ac_Crl:WI_s4.bed.sorted.bed.gz
R_Liver_F2_ChIP_H3K27ac_Crl:WI_s4.bed.sorted.bed.gz.tbi
R_Liver_F2_ChIP_H3K4me2_Crl:WI_s4.bed.sorted.bed.gz
R_Liver_F2_ChIP_H3K4me2_Crl:WI_s4.bed.sorted.bed.gz.tbi
R_Liver_F2_ChIP_H3K4me3_Crl:WI_s4.bed.sorted.bed.gz
R_Liver_F2_ChIP_H3K4me3_Crl:WI_s4.bed.sorted.bed.gz.tbi
R_Liver_F3_ChIP_H3K27ac_Crl:WI_s4.bed.sorted.bed.gz
R_Liver_F3_ChIP_H3K27ac_Crl:WI_s4.bed.sorted.bed.gz.tbi
R_Liver_Fpooled1_ChIP_input_DNA_Crl:WI_s4.bed.sorted.bed.gz
R_Liver_Fpooled1_ChIP_input_DNA_Crl:WI_s4.bed.sorted.bed.gz.tbi
R_Liver_Fpooled2_ChIP_input_DNA_Crl:WI_s4.bed.sorted.bed.gz
R_Liver_Fpooled2_ChIP_input_DNA_Crl:WI_s4.bed.sorted.bed.gz.tbi
R_Liver_M1_ChIP_CEBPA_s2.bed.sorted.bed.gz
R_Liver_M1_ChIP_CEBPA_s2.bed.sorted.bed.gz.tbi
R_Liver_M1_ChIP_CEBPA_s3.bed.sorted.bed.gz
R_Liver_M1_ChIP_CEBPA_s3.bed.sorted.bed.gz.tbi
R_Liver_M1_ChIP_FOXA1_s2.bed.sorted.bed.gz
R_Liver_M1_ChIP_FOXA1_s2.bed.sorted.bed.gz.tbi
R_Liver_M1_ChIP_FOXA1_s3.bed.sorted.bed.gz
R_Liver_M1_ChIP_FOXA1_s3.bed.sorted.bed.gz.tbi
R_Liver_M1_ChIP_H3K27ac_Crl:WI_s4.bed.sorted.bed.gz
R_Liver_M1_ChIP_H3K27ac_Crl:WI_s4.bed.sorted.bed.gz.tbi
R_Liver_M1_ChIP_H3K4me1_Crl:WI_s4.bed.sorted.bed.gz
R_Liver_M1_ChIP_H3K4me1_Crl:WI_s4.bed.sorted.bed.gz.tbi
R_Liver_M1_ChIP_HNF4A_s2.bed.sorted.bed.gz
R_Liver_M1_ChIP_HNF4A_s2.bed.sorted.bed.gz.tbi
R_Liver_M1_ChIP_HNF4A_s3.bed.sorted.bed.gz
R_Liver_M1_ChIP_HNF4A_s3.bed.sorted.bed.gz.tbi
R_Liver_M1_ChIP_HNF6_s2.bed.sorted.bed.gz
R_Liver_M1_ChIP_HNF6_s2.bed.sorted.bed.gz.tbi
R_Liver_M1_ChIP_inputDNA_s2.bed.sorted.bed.gz
R_Liver_M1_ChIP_inputDNA_s2.bed.sorted.bed.gz.tbi
R_Liver_M1_ChIP_inputDNA_s3.bed.sorted.bed.gz
R_Liver_M1_ChIP_inputDNA_s3.bed.sorted.bed.gz.tbi
R_Liver_M2_ChIP_CEBPA_s2.bed.sorted.bed.gz
R_Liver_M2_ChIP_CEBPA_s2.bed.sorted.bed.gz.tbi
R_Liver_M2_ChIP_CEBPA_s3.bed.sorted.bed.gz
R_Liver_M2_ChIP_CEBPA_s3.bed.sorted.bed.gz.tbi
R_Liver_M2_ChIP_FOXA1_s2.bed.sorted.bed.gz
R_Liver_M2_ChIP_FOXA1_s2.bed.sorted.bed.gz.tbi
R_Liver_M2_ChIP_FOXA1_s3.bed.sorted.bed.gz
R_Liver_M2_ChIP_FOXA1_s3.bed.sorted.bed.gz.tbi
R_Liver_M2_ChIP_H3K27ac_Crl:WI_s4.bed.sorted.bed.gz
R_Liver_M2_ChIP_H3K27ac_Crl:WI_s4.bed.sorted.bed.gz.tbi
R_Liver_M2_ChIP_H3K4me1_Crl:WI_s4.bed.sorted.bed.gz
R_Liver_M2_ChIP_H3K4me1_Crl:WI_s4.bed.sorted.bed.gz.tbi
R_Liver_M2_ChIP_HNF4A_s2.bed.sorted.bed.gz
R_Liver_M2_ChIP_HNF4A_s2.bed.sorted.bed.gz.tbi
R_Liver_M2_ChIP_HNF4A_s3.bed.sorted.bed.gz
R_Liver_M2_ChIP_HNF4A_s3.bed.sorted.bed.gz.tbi
R_Liver_M2_ChIP_HNF6_s2.bed.sorted.bed.gz
R_Liver_M2_ChIP_HNF6_s2.bed.sorted.bed.gz.tbi
R_Liver_M2_ChIP_inputDNA_s2.bed.sorted.bed.gz
R_Liver_M2_ChIP_inputDNA_s2.bed.sorted.bed.gz.tbi
R_Liver_M2_ChIP_inputDNA_s3.bed.sorted.bed.gz
R_Liver_M2_ChIP_inputDNA_s3.bed.sorted.bed.gz.tbi
R_Liver_M3_ChIP_H3K27ac_Crl:WI_s4.bed.sorted.bed.gz
R_Liver_M3_ChIP_H3K27ac_Crl:WI_s4.bed.sorted.bed.gz.tbi
R_Liver_M3_ChIP_H3K4me1_Crl:WI_s4.bed.sorted.bed.gz
R_Liver_M3_ChIP_H3K4me1_Crl:WI_s4.bed.sorted.bed.gz.tbi
R_Liver_Mpooled1_ChIP_inputDNA_Crl:WI_s4.bed.sorted.bed.gz
R_Liver_Mpooled1_ChIP_inputDNA_Crl:WI_s4.bed.sorted.bed.gz.tbi
R_Liver_Mpooled2_ChIP_inputDNA_Crl:WI_s4.bed.sorted.bed.gz
R_Liver_Mpooled2_ChIP_inputDNA_Crl:WI_s4.bed.sorted.bed.gz.tbi
Rat1_liver_ATACseq.bigwig
Rat2_liver_ATACseq.bigwig
Rat3_liver_ATACseq.bigwig
Rat4_liver_ATACseq.bigwig
mRatBN7.2.ENA.Kidney.bam.bigwig
mRatBN7.2.ENA.Liver.bam.bigwig
"synteny/rn7.2 to rn6 Synteny.paf
"synteny/rn7.2 to rn5 Synteny.paf
"synteny/rn7.2 to rn3.4 Synteny.paf
"synteny/rn7.2 to hg38 Synteny.paf
"synteny/rn7.2 to susScr11 Synteny.paf
"synteny/rn7.2 to mm39 Synteny.paf
"synteny/rn7.2 to canFam3 Synteny.paf
"synteny/rn7.2 to UTH_Rnor_SHRSP_BbbUtx_1.0 Synteny.paf
"synteny/rn7.2 to UTH_Rnor_SHR_Utx Synteny.paf
"synteny/rn7.2 to UTH_Rnor_WKY_Bbb_1.0 Synteny.paf
ACI_EurMcwi (2019)_damaging.gff3.sorted.gff.gz
ACI_EurMcwi (2019)_damaging.gff3.sorted.gff.gz.tbi
ACI_N (2020)_damaging.gff3.sorted.gff.gz
ACI_N (2020)_damaging.gff3.sorted.gff.gz.tbi
BN-Lx_CubMcwi (2019)_damaging.gff3.sorted.gff.gz
BN-Lx_CubMcwi (2019)_damaging.gff3.sorted.gff.gz.tbi
BN_NHsdMcwi (2019)_damaging.gff3.sorted.gff.gz
BN_NHsdMcwi (2019)_damaging.gff3.sorted.gff.gz.tbi
BN_NHsdMcwi (2020)_damaging.gff3.sorted.gff.gz
BN_NHsdMcwi (2020)_damaging.gff3.sorted.gff.gz.tbi
BN_SsN (2020)_damaging.gff3.sorted.gff.gz
BN_SsN (2020)_damaging.gff3.sorted.gff.gz.tbi
BUF_N (2020)_damaging.gff3.sorted.gff.gz
BUF_N (2020)_damaging.gff3.sorted.gff.gz.tbi
BXH2_CubMcwi (2020)_damaging.gff3.sorted.gff.gz
BXH2_CubMcwi (2020)_damaging.gff3.sorted.gff.gz.tbi
BXH3_CubMcwi (2020)_damaging.gff3.sorted.gff.gz
BXH3_CubMcwi (2020)_damaging.gff3.sorted.gff.gz.tbi
DA_OlaHsd (2019)_damaging.gff3.sorted.gff.gz
DA_OlaHsd (2019)_damaging.gff3.sorted.gff.gz.tbi
F344_DuCrl (2019)_damaging.gff3.sorted.gff.gz
F344_DuCrl (2019)_damaging.gff3.sorted.gff.gz.tbi
F344_N (2020)_damaging.gff3.sorted.gff.gz
F344_N (2020)_damaging.gff3.sorted.gff.gz.tbi
F344_NCrl (2019)_damaging.gff3.sorted.gff.gz
F344_NCrl (2019)_damaging.gff3.sorted.gff.gz.tbi
F344_Stm (2019)_damaging.gff3.sorted.gff.gz
F344_Stm (2019)_damaging.gff3.sorted.gff.gz.tbi
FHH_EurMcwi (2019)_damaging.gff3.sorted.gff.gz
FHH_EurMcwi (2019)_damaging.gff3.sorted.gff.gz.tbi
FXLE16_Stm (2020)_damaging.gff3.sorted.gff.gz
FXLE16_Stm (2020)_damaging.gff3.sorted.gff.gz.tbi
FXLE18_Stm (2020)_damaging.gff3.sorted.gff.gz
FXLE18_Stm (2020)_damaging.gff3.sorted.gff.gz.tbi
GK_FarMcwi (2019)_damaging.gff3.sorted.gff.gz
GK_FarMcwi (2019)_damaging.gff3.sorted.gff.gz.tbi
HXB10_IpcvMcwi (2019)_damaging.gff3.sorted.gff.gz
HXB10_IpcvMcwi (2019)_damaging.gff3.sorted.gff.gz.tbi
HXB20_IpcvMcwi (2020)_damaging.gff3.sorted.gff.gz
HXB20_IpcvMcwi (2020)_damaging.gff3.sorted.gff.gz.tbi
HXB2_IpcvMcwi (2019)_damaging.gff3.sorted.gff.gz
HXB2_IpcvMcwi (2019)_damaging.gff3.sorted.gff.gz.tbi
HXB31_IpcvMcwi (2019)_damaging.gff3.sorted.gff.gz
HXB31_IpcvMcwi (2019)_damaging.gff3.sorted.gff.gz.tbi
HXB4_IpcvMcwi (2020)_damaging.gff3.sorted.gff.gz
HXB4_IpcvMcwi (2020)_damaging.gff3.sorted.gff.gz.tbi
LE_Stm (2019)_damaging.gff3.sorted.gff.gz
LE_Stm (2019)_damaging.gff3.sorted.gff.gz.tbi
LEW_Crl (2019)_damaging.gff3.sorted.gff.gz
LEW_Crl (2019)_damaging.gff3.sorted.gff.gz.tbi
LEXF10A_StmMcwi (2020)_damaging.gff3.sorted.gff.gz
LEXF10A_StmMcwi (2020)_damaging.gff3.sorted.gff.gz.tbi
LEXF11_Stm (2020)_damaging.gff3.sorted.gff.gz
LEXF11_Stm (2020)_damaging.gff3.sorted.gff.gz.tbi
LEXF1A_Stm (2019)_damaging.gff3.sorted.gff.gz
LEXF1A_Stm (2019)_damaging.gff3.sorted.gff.gz.tbi
LEXF1C_Stm (2019)_damaging.gff3.sorted.gff.gz
LEXF1C_Stm (2019)_damaging.gff3.sorted.gff.gz.tbi
LEXF2B_Stm (2019)_damaging.gff3.sorted.gff.gz
LEXF2B_Stm (2019)_damaging.gff3.sorted.gff.gz.tbi
LEXF3_Stm (2020)_damaging.gff3.sorted.gff.gz
LEXF3_Stm (2020)_damaging.gff3.sorted.gff.gz.tbi
LEXF4_Stm (2020)_damaging.gff3.sorted.gff.gz
LEXF4_Stm (2020)_damaging.gff3.sorted.gff.gz.tbi
LH_MavRrrcAek (2020)_damaging.gff3.sorted.gff.gz
LH_MavRrrcAek (2020)_damaging.gff3.sorted.gff.gz.tbi
LL_MavRrrcAek (2020)_damaging.gff3.sorted.gff.gz
LL_MavRrrcAek (2020)_damaging.gff3.sorted.gff.gz.tbi
LN_MavRrrcAek (2020)_damaging.gff3.sorted.gff.gz
LN_MavRrrcAek (2020)_damaging.gff3.sorted.gff.gz.tbi
M520_N (2020)_damaging.gff3.sorted.gff.gz
M520_N (2020)_damaging.gff3.sorted.gff.gz.tbi
M520_NRrrcMcwi (2019)_damaging.gff3.sorted.gff.gz
M520_NRrrcMcwi (2019)_damaging.gff3.sorted.gff.gz.tbi
MR_N (2020)_damaging.gff3.sorted.gff.gz
MR_N (2020)_damaging.gff3.sorted.gff.gz.tbi
MWF_Hsd (2019)_damaging.gff3.sorted.gff.gz
MWF_Hsd (2019)_damaging.gff3.sorted.gff.gz.tbi
PVG_Seac (2019)_damaging.gff3.sorted.gff.gz
PVG_Seac (2019)_damaging.gff3.sorted.gff.gz.tbi
SHR_OlalpcvMcwi (2019)_damaging.gff3.sorted.gff.gz
SHR_OlalpcvMcwi (2019)_damaging.gff3.sorted.gff.gz.tbi
SHRSP_A3NCrl (2019)_damaging.gff3.sorted.gff.gz
SHRSP_A3NCrl (2019)_damaging.gff3.sorted.gff.gz.tbi
SR_JrHsd (2020)_damaging.gff3.sorted.gff.gz
SR_JrHsd (2020)_damaging.gff3.sorted.gff.gz.tbi
SS_JrHsdMcwi (2019)_damaging.gff3.sorted.gff.gz
SS_JrHsdMcwi (2019)_damaging.gff3.sorted.gff.gz.tbi
WAG_RijCrl (2020)_damaging.gff3.sorted.gff.gz
WAG_RijCrl (2020)_damaging.gff3.sorted.gff.gz.tbi
WKY_N (2020)_damaging.gff3.sorted.gff.gz
WKY_N (2020)_damaging.gff3.sorted.gff.gz.tbi
WKY_NCrl (2019)_damaging.gff3.sorted.gff.gz
WKY_NCrl (2019)_damaging.gff3.sorted.gff.gz.tbi
WN_N (2020)_damaging.gff3.sorted.gff.gz
WN_N (2020)_damaging.gff3.sorted.gff.gz.tbi
ACI_EurMcwi (2019).gff3.sorted.gff.gz
ACI_EurMcwi (2019).gff3.sorted.gff.gz.tbi
ACI_N (2020).gff3.sorted.gff.gz
ACI_N (2020).gff3.sorted.gff.gz.tbi
BN-Lx_CubMcwi (2019).gff3.sorted.gff.gz
BN-Lx_CubMcwi (2019).gff3.sorted.gff.gz.tbi
BN_NHsdMcwi (2019).gff3.sorted.gff.gz
BN_NHsdMcwi (2019).gff3.sorted.gff.gz.tbi
BN_NHsdMcwi (2020).gff3.sorted.gff.gz
BN_NHsdMcwi (2020).gff3.sorted.gff.gz.tbi
BN_SsN (2020).gff3.sorted.gff.gz
BN_SsN (2020).gff3.sorted.gff.gz.tbi
BUF_N (2020).gff3.sorted.gff.gz
BUF_N (2020).gff3.sorted.gff.gz.tbi
BXH2_CubMcwi (2020).gff3.sorted.gff.gz
BXH2_CubMcwi (2020).gff3.sorted.gff.gz.tbi
BXH3_CubMcwi (2020).gff3.sorted.gff.gz
BXH3_CubMcwi (2020).gff3.sorted.gff.gz.tbi
DA_OlaHsd (2019).gff3.sorted.gff.gz
DA_OlaHsd (2019).gff3.sorted.gff.gz.tbi
F344_DuCrl (2019).gff3.sorted.gff.gz
F344_DuCrl (2019).gff3.sorted.gff.gz.tbi
F344_N (2020).gff3.sorted.gff.gz
F344_N (2020).gff3.sorted.gff.gz.tbi
F344_NCrl (2019).gff3.sorted.gff.gz
F344_NCrl (2019).gff3.sorted.gff.gz.tbi
F344_Stm (2019).gff3.sorted.gff.gz
F344_Stm (2019).gff3.sorted.gff.gz.tbi
FHH_EurMcwi (2019).gff3.sorted.gff.gz
FHH_EurMcwi (2019).gff3.sorted.gff.gz.tbi
FXLE16_Stm (2020).gff3.sorted.gff.gz
FXLE16_Stm (2020).gff3.sorted.gff.gz.tbi
FXLE18_Stm (2020).gff3.sorted.gff.gz
FXLE18_Stm (2020).gff3.sorted.gff.gz.tbi
GK_FarMcwi (2019).gff3.sorted.gff.gz
GK_FarMcwi (2019).gff3.sorted.gff.gz.tbi
HXB10_IpcvMcwi (2019).gff3.sorted.gff.gz
HXB10_IpcvMcwi (2019).gff3.sorted.gff.gz.tbi
HXB20_IpcvMcwi (2020).gff3.sorted.gff.gz
HXB20_IpcvMcwi (2020).gff3.sorted.gff.gz.tbi
HXB2_IpcvMcwi (2019).gff3.sorted.gff.gz
HXB2_IpcvMcwi (2019).gff3.sorted.gff.gz.tbi
HXB31_IpcvMcwi (2019).gff3.sorted.gff.gz
HXB31_IpcvMcwi (2019).gff3.sorted.gff.gz.tbi
HXB4_IpcvMcwi (2020).gff3.sorted.gff.gz
HXB4_IpcvMcwi (2020).gff3.sorted.gff.gz.tbi
LE_Stm (2019).gff3.sorted.gff.gz
LE_Stm (2019).gff3.sorted.gff.gz.tbi
LEW_Crl (2019).gff3.sorted.gff.gz
LEW_Crl (2019).gff3.sorted.gff.gz.tbi
LEXF10A_StmMcwi (2020).gff3.sorted.gff.gz
LEXF10A_StmMcwi (2020).gff3.sorted.gff.gz.tbi
LEXF11_Stm (2020).gff3.sorted.gff.gz
LEXF11_Stm (2020).gff3.sorted.gff.gz.tbi
LEXF1A_Stm (2019).gff3.sorted.gff.gz
LEXF1A_Stm (2019).gff3.sorted.gff.gz.tbi
LEXF1C_Stm (2019).gff3.sorted.gff.gz
LEXF1C_Stm (2019).gff3.sorted.gff.gz.tbi
LEXF2B_Stm (2019).gff3.sorted.gff.gz
LEXF2B_Stm (2019).gff3.sorted.gff.gz.tbi
LEXF3_Stm (2020).gff3.sorted.gff.gz
LEXF3_Stm (2020).gff3.sorted.gff.gz.tbi
LEXF4_Stm (2020).gff3.sorted.gff.gz
LEXF4_Stm (2020).gff3.sorted.gff.gz.tbi
LH_MavRrrcAek (2020).gff3.sorted.gff.gz
LH_MavRrrcAek (2020).gff3.sorted.gff.gz.tbi
LL_MavRrrcAek (2020).gff3.sorted.gff.gz
LL_MavRrrcAek (2020).gff3.sorted.gff.gz.tbi
LN_MavRrrcAek (2020).gff3.sorted.gff.gz
LN_MavRrrcAek (2020).gff3.sorted.gff.gz.tbi
M520_N (2020).gff3.sorted.gff.gz
M520_N (2020).gff3.sorted.gff.gz.tbi
M520_NRrrcMcwi (2019).gff3.sorted.gff.gz
M520_NRrrcMcwi (2019).gff3.sorted.gff.gz.tbi
MR_N (2020).gff3.sorted.gff.gz
MR_N (2020).gff3.sorted.gff.gz.tbi
MWF_Hsd (2019).gff3.sorted.gff.gz
MWF_Hsd (2019).gff3.sorted.gff.gz.tbi
PVG_Seac (2019).gff3.sorted.gff.gz
PVG_Seac (2019).gff3.sorted.gff.gz.tbi
SHR_OlalpcvMcwi (2019).gff3.sorted.gff.gz
SHR_OlalpcvMcwi (2019).gff3.sorted.gff.gz.tbi
SHRSP_A3NCrl (2019).gff3.sorted.gff.gz
SHRSP_A3NCrl (2019).gff3.sorted.gff.gz.tbi
SR_JrHsd (2020).gff3.sorted.gff.gz
SR_JrHsd (2020).gff3.sorted.gff.gz.tbi
SS_JrHsdMcwi (2019).gff3.sorted.gff.gz
SS_JrHsdMcwi (2019).gff3.sorted.gff.gz.tbi
WAG_RijCrl (2020).gff3.sorted.gff.gz
WAG_RijCrl (2020).gff3.sorted.gff.gz.tbi
WKY_N (2020).gff3.sorted.gff.gz
WKY_N (2020).gff3.sorted.gff.gz.tbi
WKY_NCrl (2019).gff3.sorted.gff.gz
WKY_NCrl (2019).gff3.sorted.gff.gz.tbi
WN_N (2020).gff3.sorted.gff.gz
WN_N (2020).gff3.sorted.gff.gz.tbi
