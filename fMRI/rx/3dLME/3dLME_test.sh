#!/bin/bash
3dLME -prefix allAff_age \
-jobs 8 \
-model  "age_c*gender+age_c2*gender" \
-ranEff "~1" \
-SS_type 3 \
-qVars "age_c,age_c2" \
-qVarCenters "0,0" \
-resid	all_residuals	\
-num_glt 1 \
-gltLabel 1 'gender' -gltCode  1 'gender : 1*male -1*female'	\
-dataTable \
Subj	gender	age_c	age_c2	InputFile	\
	01	female	-1.9590951536643	3.83805382111096	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L001_ses-wave1_con_0006.nii	\
	01	female	1.1219048463357	1.25867048423152	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L001_ses-wave2_con_0006.nii	\
	02	male	-1.5420951536643	2.37805746295493	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L002_ses-wave1_con_0006.nii	\
	03	female	-1.8340951536643	3.36390503269488	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L003_ses-wave1_con_0006.nii	\
	04	female	-2.6590951536643	7.07078703624098	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L004_ses-wave1_con_0006.nii	\
	05	male	-2.4670951536643	6.08655849723389	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave1_con_0006.nii	\
	05	male	0.593904846335697	0.352722966501028	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave2_con_0006.nii	\
	05	male	4.2799048463357	18.3175854936878	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave3_con_0006.nii	\
	06	female	-1.9780951536643	3.9128604369502	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L006_ses-wave1_con_0006.nii
