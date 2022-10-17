# Human variation STAR protocol

Script for the STAR protocol on the use of the R package *huva*.

## 01 - Data Load and Curation
Here I load the GTEx v8 dataset and format it to suit the structure of the *huva* package.

The data were downloaded from the [GTEx website](https://www.gtexportal.org/home/datasets) on the 13.10.2022.

The following data were used for the analysis:
*GTEx_Analysis_v8_Annotations_SampleAttributesDS.txt*: Data dictionary for Sample Attributes
*GTEx_Analysis_v8_Annotations_SubjectPhenotypesDD.xlsx*: Data dictionary for Subject Phenotypes
*GTEx_Analysis_v8_Annotations_SampleAttributesDD.xlsx*: Sample Atributes annotation
*GTEx_Analysis_v8_Annotations_SubjectPhenotypesDS.txt*: Subject Phenotypes annotation
*GTEx_Analysis_2017-06-05_v8_RNASeQCv1.1.9_gene_reads.gct*: Gene reads
*GTEx_Analysis_2017-06-05_v8_RNASeQCv1.1.9_gene_tpm.gct*: TPM normalized reads 

## 02 - Preparation of the *huva.db* and testing of the dataset
