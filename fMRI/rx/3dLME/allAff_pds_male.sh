#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=allAff_pds_male
#SBATCH --output=output/allAff_pds_male.log
#SBATCH --error=output/allAff_pds_male_error.log
#SBATCH --cpus-per-task=25
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=fat,short

module load prl afni

cd /projects/dsnlab/SFIC_Faces33/fMRI/analysis/rx/AFNI/allAff_pds_male/

3dLME -prefix allAff_pds_male \
-jobs 8 \
-model  "pdss_c+pdss_c2" \
-ranEff "~1" \
-SS_type 3 \
-qVars "pdss_c,pdss_c2" \
-qVarCenters "0,0" \
-resid	all_residuals	\
-num_glt 4 \
-gltLabel 1 'pdss' -gltCode  1 'pdss_c : ' \
-gltLabel 2 'pdss_sq' -gltCode  2 'pdss_c2 : ' \
-dataTable \
	Subj	gender	pdss_c	pdss_c2	age_c	age_c2	InputFile	\
	05	male	-0.146341463414634	0.0214158239143367	-2.3681201897019	5.60799323287374	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave1_con_0006.nii	\
	05	male	0.853658536585366	0.728732897085068	0.692879810298104	0.480082431518736	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave2_con_0006.nii	\
	05	male	1.35365853658537	1.83239143367043	4.37887981029811	19.1745883930364	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave3_con_0006.nii	\
	08	male	-0.146341463414634	0.0214158239143367	1.2848798102981	1.65091612691169	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L008_ses-wave2_con_0006.nii	\
	09	male	0.853658536585366	0.728732897085068	-2.7291201897019	7.44809700983851	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave1_con_0006.nii	\
	09	male	-0.646341463414634	0.417757287328971	0.381879810298104	0.145832189513316	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave2_con_0006.nii	\
	11	male	-1.64634146341463	2.71044021415824	-2.3571201897019	5.5560155887003	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L011_ses-wave1_con_0006.nii	\
	11	male	-0.646341463414634	0.417757287328971	0.642879810298105	0.413294450488927	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L011_ses-wave2_con_0006.nii	\
	14	male	-1.14634146341463	1.31409875074361	-2.3631201897019	5.58433703097672	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L014_ses-wave1_con_0006.nii	\
	15	male	-1.14634146341463	1.31409875074361	-2.5101201897019	6.30070336674908	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L015_ses-wave1_con_0006.nii	\
	17	male	-1.64634146341463	2.71044021415824	-1.8571201897019	3.4488953989984	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave1_con_0006.nii	\
	17	male	1.85365853658537	3.4360499702558	1.0708798102981	1.1467835681041	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave2_con_0006.nii	\
	18	male	0.353658536585366	0.125074360499702	-2.4631201897019	6.0669610689171	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave1_con_0006.nii	\
	18	male	0.353658536585366	0.125074360499702	0.817879810298104	0.668927384093262	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave2_con_0006.nii	\
	18	male	1.85365853658537	3.4360499702558	4.1778798102981	17.4546797092965	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave3_con_0006.nii	\
	26	male	-1.64634146341463	2.71044021415824	-2.3631201897019	5.58433703097672	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L026_ses-wave1_con_0006.nii	\
	28	male	-0.146341463414634	0.0214158239143367	-2.3211201897019	5.38759893504176	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave1_con_0006.nii	\
	28	male	1.35365853658537	1.83239143367043	0.564879810298104	0.319089200082422	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave2_con_0006.nii	\
	28	male	1.85365853658537	3.4360499702558	4.2758798102981	18.283148152115	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave3_con_0006.nii	\
	30	male	-0.146341463414634	0.0214158239143367	-2.7931201897019	7.80152039412035	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave1_con_0006.nii	\
	30	male	1.85365853658537	3.4360499702558	0.915102032520304	0.837411729922791	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave2_con_0006.nii	\
	30	male	2.35365853658537	5.53970850684117	3.9598798102981	15.6806481120066	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave3_con_0006.nii	\
	33	male	-0.146341463414634	0.0214158239143367	-2.7131201897019	7.36102116376805	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave1_con_0006.nii	\
	33	male	-0.146341463414634	0.0214158239143367	0.445879810298104	0.198808805231473	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave2_con_0006.nii	\
	33	male	1.85365853658537	3.4360499702558	3.9317798102981	15.4588924766678	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave3_con_0006.nii	\
	34	male	-0.646341463414634	0.417757287328971	-2.4741201897019	6.12127071309055	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L034_ses-wave1_con_0006.nii	\
	34	male	-0.646341463414634	0.417757287328971	1.1788798102981	1.38975760712849	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L034_ses-wave2_con_0006.nii	\
	37	male	0.853658536585366	0.728732897085068	-2.4151201897019	5.83280553070572	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L037_ses-wave1_con_0006.nii	\
	38	male	-1.64634146341463	2.71044021415824	-1.7101201897019	2.92451106322605	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave1_con_0006.nii	\
	38	male	1.35365853658537	1.83239143367043	0.998879810298105	0.997760875421178	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave2_con_0006.nii	\
	38	male	1.85365853658537	3.4360499702558	4.9678798102981	24.6798298095675	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave3_con_0006.nii	\
	40	male	0.353658536585366	0.125074360499702	-2.4511201897019	6.00799018436426	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave1_con_0006.nii	\
	40	male	0.353658536585366	0.125074360499702	0.350879810298103	0.123116641274833	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave2_con_0006.nii	\
	47	male	-0.646341463414634	0.417757287328971	-1.8131201897019	3.28740482230464	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L047_ses-wave1_con_0006.nii	\
	52	male	-1.64634146341463	2.71044021415824	-2.4431201897019	5.96883626132903	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L052_ses-wave1_con_0006.nii	\
	53	male	0.853658536585366	0.728732897085068	-2.4491201897019	5.99818970360545	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L053_ses-wave1_con_0006.nii	\
	55	male	-0.146341463414634	0.0214158239143367	-2.4681201897019	6.09161727081412	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave1_con_0006.nii	\
	55	male	1.85365853658537	3.4360499702558	1.1289909214092	1.27462050062441	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave2_con_0006.nii	\
	55	male	1.85365853658537	3.4360499702558	4.8578798102981	23.5989962513019	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave3_con_0006.nii	\
	61	male	-0.646341463414634	0.417757287328971	-2.2931201897019	5.25840020441846	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L061_ses-wave1_con_0006.nii	\
	62	male	-0.646341463414634	0.417757287328971	-1.7711201897019	3.13686672636968	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L062_ses-wave1_con_0006.nii	\
	63	male	-1.64634146341463	2.71044021415824	-2.4321201897019	5.91520861715559	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L063_ses-wave1_con_0006.nii	\
	64	male	-0.646341463414634	0.417757287328971	-2.4651201897019	6.07681754967591	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave1_con_0006.nii	\
	64	male	-0.146341463414634	0.0214158239143367	1.0678798102981	1.14036728924231	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave2_con_0006.nii	\
	64	male	1.85365853658537	3.4360499702558	4.6678798102981	21.7891019233887	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave3_con_0006.nii	\
	67	male	-0.646341463414634	0.417757287328971	-2.3351201897019	5.45278630035342	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L067_ses-wave1_con_0006.nii	\
	70	male	-1.64634146341463	2.71044021415824	-2.3601201897019	5.57016730983851	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave1_con_0006.nii	\
	70	male	-1.14634146341463	1.31409875074361	0.853990921409205	0.729300493849342	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave2_con_0006.nii	\
	70	male	1.85365853658537	3.4360499702558	3.99787981029811	15.9830429775892	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave3_con_0006.nii	\
	71	male	-1.14634146341463	1.31409875074361	-1.7211201897019	2.96225470739949	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave1_con_0006.nii	\
	71	male	1.35365853658537	1.83239143367043	1.6151020325203	2.60855457545122	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave2_con_0006.nii	\
	73	male	-1.14634146341463	1.31409875074361	-2.1571201897019	4.65316751281954	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave1_con_0006.nii	\
	73	male	0.353658536585366	0.125074360499702	0.831879810298105	0.692024018781611	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave2_con_0006.nii	\
	73	male	1.35365853658537	1.83239143367043	3.7708798102981	14.2195345437139	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave3_con_0006.nii	\
	74	male	-1.14634146341463	1.31409875074361	-1.7741201897019	3.14750244750789	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave1_con_0006.nii	\
	74	male	1.85365853658537	3.4360499702558	4.06787981029811	16.5476461510309	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave3_con_0006.nii	\
	75	male	-0.646341463414634	0.417757287328971	-1.7041201897019	2.90402562094963	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L075_ses-wave1_con_0006.nii	\
	76	male	-0.646341463414634	0.417757287328971	-1.9431201897019	3.77571607162713	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave1_con_0006.nii	\
	76	male	0.853658536585366	0.728732897085068	0.886879810298105	0.786555797914402	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave2_con_0006.nii	\
	78	male	-1.64634146341463	2.71044021415824	-1.7931201897019	3.21528001471656	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave1_con_0006.nii	\
	78	male	0.853658536585366	0.728732897085068	0.928879810298104	0.862817701979442	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave2_con_0006.nii	\
	78	male	1.85365853658537	3.4360499702558	5.0378798102981	25.3802329830093	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave3_con_0006.nii	\
	79	male	-0.146341463414634	0.0214158239143367	-1.9991201897019	3.99648153287375	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L079_ses-wave1_con_0006.nii	\
	81	male	-0.646341463414634	0.417757287328971	-2.0261201897019	4.10516302311765	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave1_con_0006.nii	\
	81	male	-1.14634146341463	1.31409875074361	0.0958798102981042	0.00919293802280045	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave2_con_0006.nii	\
	84	male	-0.646341463414634	0.417757287328971	0.728990921409205	0.531427763497041	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave2_con_0006.nii	\
	84	male	2.35365853658537	5.53970850684117	4.3478798102981	18.9040588447979	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave3_con_0006.nii	\
	86	male	-0.646341463414634	0.417757287328971	-1.8291201897019	3.3456806683751	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave1_con_0006.nii	\
	86	male	0.853658536585366	0.728732897085068	0.892879810298105	0.79723435563798	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave2_con_0006.nii	\
	87	male	-1.64634146341463	2.71044021415824	-2.0851201897019	4.34772620550247	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave1_con_0006.nii	\
	87	male	-1.14634146341463	1.31409875074361	0.698879810298104	0.488432989242314	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave2_con_0006.nii	\
	87	male	0.353658536585366	0.125074360499702	4.0122798102981	16.0983892761258	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave3_con_0006.nii	\
	88	male	-1.14634146341463	1.31409875074361	-2.1131201897019	4.46527693612577	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave1_con_0006.nii	\
	88	male	0.853658536585366	0.728732897085068	1.0206575880759	1.04174191209692	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave2_con_0006.nii	\
	89	male	-1.64634146341463	2.71044021415824	-2.0761201897019	4.31027504208784	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave1_con_0006.nii	\
	89	male	-1.14634146341463	1.31409875074361	0.920879810298104	0.848019625014671	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave2_con_0006.nii	\
	89	male	0.853658536585366	0.728732897085068	4.2678798102981	18.2147980751502	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave3_con_0006.nii	\
	90	male	-1.64634146341463	2.71044021415824	-2.3961201897019	5.74139196349705	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave1_con_0006.nii	\
	90	male	-1.64634146341463	2.71044021415824	0.125879810298104	0.0158457266406865	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave2_con_0006.nii	\
	90	male	0.853658536585366	0.728732897085068	3.4398798102981	11.8327731092965	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave3_con_0006.nii	\
	93	male	-1.64634146341463	2.71044021415824	-2.5571201897019	6.53886366458106	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L093_ses-wave1_con_0006.nii	\
	97	male	-1.14634146341463	1.31409875074361	-2.4101201897019	5.8086793288087	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L097_ses-wave1_con_0006.nii	