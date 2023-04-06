# Human variation STAR protocol

Script for the STAR protocol on the use of the R package *huva*. This analysis has been performed with the huva docker image [lorenzobonaguro/huva:015](https://hub.docker.com/r/lorenzobonaguro/huva_docker).

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

## 02 - Preparation of the *huva.db* including the GTEx V8 data

Here we provide an exemplary script to generate a new *huva* database, from here you can see the structure needed in the input files and how to generate the database. 

## 03 - Run an *exploratory gene experiment*

In the third script we perform an *exploratory huva experiment* on *MYD88*. The script will guide you trough all the steps to run the experiment and visualize the results.

## 04 - Run a *huva gene experiment*

In the fourth script we now perform a *huva gene experiment* on *MYD88*. Also here we exemplify how to run the experiment and visualize the results.

## 05 - Data export for secondary analysis

As last step we exemplify how the individual elements of an *huva experiment* can be easily exported for secondary analysis

## Further informations

If you want to know more about *huva* take a look at the following resources:

- Original manuscript: [Human variation in population-wide gene expression data predicts gene perturbation phenotype; Bonaguro at al. 2022](https://www.cell.com/iscience/fulltext/S2589-0042(22)01600-5#%20)

- STAR Protocol: [huva: a human variation analysis framework to predict gene perturbation; Aschenbrenner at al. 2023](https://star-protocols.cell.com/protocols/2559)

- *Huva* source code: [Git](https://github.com/lorenzobonaguro/huva)

## Contact or follow us
For any problem of question regrding the *huva* package or this repository or you just want to be up to date on what is coming next, send us an [email](mailto:lorenzobonaguro@uni-bonn.de) or follow us:  

<img src="./logo/twitter.png" width="12%" style="float: left;">  

[@LorenzoBonaguro](https://twitter.com/LorenzoBonaguro)  
[@AschenbrennerAC](https://twitter.com/AschenbrennerAC)  
[@LabSchultze](https://twitter.com/LabSchultze)
