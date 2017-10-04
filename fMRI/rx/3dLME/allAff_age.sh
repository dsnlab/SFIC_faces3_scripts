#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=allAff_age
#SBATCH --output=output/allAff_age.log
#SBATCH --error=output/allAff_age_error.log
#SBATCH --cpus-per-task=25
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=fat,short

module load prl afni

cd /projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/ttest/

3dLME -prefix allAff_age \
-jobs 8 \
-model  "age_c*gender+age_c2*gender" \
-ranEff "~1" \
-SS_type 3 \
-qVars "age_c,age_c2" \
-qVarCenters "0,0" \
-resid	all_residuals	\
-num_glt 4 \
-gltLabel 1 'age' -gltCode  1 'age_c : ' \
-gltLabel 2 'age_sq' -gltCode  2 'age_c2 : ' \
-gltLabel 3 'age.gender' -gltCode  3 'gender : 1*male -1*female age_c : ' \
-gltLabel 4 'age_sq.gender' -gltCode  4 'gender : 1*male -1*female age_c2 : ' \
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
	06	female	-1.9780951536643	3.9128604369502	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L006_ses-wave1_con_0006.nii	\
	07	female	-2.0530951536643	4.21519970999985	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L007_ses-wave1_con_0006.nii	\
	07	female	0.946904846335697	0.896628788014029	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L007_ses-wave2_con_0006.nii	\
	08	male	-1.9230951536643	3.69829497004713	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L008_ses-wave1_con_0006.nii	\
	08	male	1.1859048463357	1.40637030456249	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L008_ses-wave2_con_0006.nii	\
	09	male	-2.8280951536643	7.99812219817951	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave1_con_0006.nii	\
	09	male	0.282904846335697	0.0800351520802243	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave2_con_0006.nii	\
	10	female	-2.0250951536643	4.10101038139465	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L010_ses-wave1_con_0006.nii	\
	11	male	-2.4560951536643	6.03240340385327	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L011_ses-wave1_con_0006.nii	\
	11	male	0.543904846335698	0.295832481867459	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L011_ses-wave2_con_0006.nii	\
	14	male	-2.4620951536643	6.06191254569724	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L014_ses-wave1_con_0006.nii	\
	15	male	-2.6090951536643	6.80737752087455	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L015_ses-wave1_con_0006.nii	\
	16	female	-1.8810951536643	3.53851897713933	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave1_con_0006.nii	\
	16	female	0.204904846335697	0.0419859960518558	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave2_con_0006.nii	\
	16	female	4.2799048463357	18.3175854936878	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave3_con_0006.nii	\
	17	male	-1.9560951536643	3.82630825018897	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave1_con_0006.nii	\
	17	male	0.971904846335697	0.944599030330815	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave2_con_0006.nii	\
	18	male	-2.5620951536643	6.5643315764301	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave1_con_0006.nii	\
	18	male	0.718904846335697	0.516824178084952	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave2_con_0006.nii	\
	18	male	4.0789048463357	16.6374647454608	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave3_con_0006.nii	\
	19	female	-2.1060951536643	4.43563679628826	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave1_con_0006.nii	\
	19	female	0.668904846335698	0.447433693451384	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave2_con_0006.nii	\
	19	female	4.1469048463357	17.1968198045625	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave3_con_0006.nii	\
	20	female	-2.3700951536643	5.61735103742302	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L020_ses-wave1_con_0006.nii	\
	20	female	0.690904846335696	0.477349506690152	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L020_ses-wave2_con_0006.nii	\
	22	female	-2.5920951536643	6.71895728564997	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave1_con_0006.nii	\
	22	female	0.235904846335698	0.0556510965246693	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave2_con_0006.nii	\
	22	female	3.5499048463357	12.6018244180377	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave3_con_0006.nii	\
	23	female	-2.6700951536643	7.12940812962159	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave1_con_0006.nii	\
	23	female	0.460904846335698	0.212433277375733	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave2_con_0006.nii	\
	23	female	3.5379048463357	12.5167707017256	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave3_con_0006.nii	\
	24	female	-2.5030951536643	6.26548534829772	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave1_con_0006.nii	\
	24	female	1.3189048463357	1.73950999368779	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave2_con_0006.nii	\
	24	female	4.0579048463357	16.4665917419147	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave3_con_0006.nii	\
	25	female	-2.4730951536643	6.11619963907786	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L025_ses-wave1_con_0006.nii	\
	26	male	-2.4620951536643	6.06191254569724	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L026_ses-wave1_con_0006.nii	\
	27	male	-1.7280951536643	2.98631286011805	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L027_ses-wave1_con_0006.nii	\
	28	male	-2.4200951536643	5.85686055278944	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave1_con_0006.nii	\
	28	male	0.465904846335697	0.217067325839089	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave2_con_0006.nii	\
	28	male	4.1769048463357	17.4465340953426	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave3_con_0006.nii	\
	29	female	-2.2980951536643	5.28124133529535	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave1_con_0006.nii	\
	29	female	0.543904846335698	0.295832481867459	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave2_con_0006.nii	\
	29	female	3.9161048463357	15.3358771674939	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave3_con_0006.nii	\
	30	male	-2.8920951536643	8.36421437784854	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave1_con_0006.nii	\
	30	male	0.81612706855792	0.666063392032944	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave2_con_0006.nii	\
	30	male	3.8609048463357	14.9065862324585	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave3_con_0006.nii	\
	31	female	-2.3950951536643	5.73648079510623	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L031_ses-wave1_con_0006.nii	\
	32	female	-2.8370951536643	8.04910891094547	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave1_con_0006.nii	\
	32	female	0.810571513002364	0.657026177690941	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave2_con_0006.nii	\
	32	female	2.5129048463357	6.31469076673744	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave3_con_0006.nii	\
	33	male	-2.8120951536643	7.90787915326225	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave1_con_0006.nii	\
	33	male	0.346904846335697	0.120342972411194	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave2_con_0006.nii	\
	33	male	3.8328048463357	14.6903929900944	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave3_con_0006.nii	\
	34	male	-2.5730951536643	6.62081866981072	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L034_ses-wave1_con_0006.nii	\
	34	male	1.0799048463357	1.16619447713933	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L034_ses-wave2_con_0006.nii	\
	35	female	-2.5870951536643	6.69306133411332	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave1_con_0006.nii	\
	35	female	0.371904846335697	0.138313214727979	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave2_con_0006.nii	\
	35	female	3.4129048463357	11.6479194901417	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave3_con_0006.nii	\
	36	female	-1.9840951536643	3.93663357879417	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L036_ses-wave1_con_0006.nii	\
	37	male	-2.5140951536643	6.32067444167833	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L037_ses-wave1_con_0006.nii	\
	38	male	-1.8090951536643	3.27282527501167	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave1_con_0006.nii	\
	38	male	0.899904846335698	0.809828732458476	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave2_con_0006.nii	\
	38	male	4.8689048463357	23.7062344026712	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave3_con_0006.nii	\
	39	female	-1.8840951536643	3.54981454806131	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L039_ses-wave1_con_0006.nii	\
	40	male	-2.5500951536643	6.50298529274217	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave1_con_0006.nii	\
	40	male	0.251904846335696	0.0634560516074108	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave2_con_0006.nii	\
	41	female	-2.6620951536643	7.08675060716297	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave1_con_0006.nii	\
	41	female	1.0689048463357	1.14255757051994	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave2_con_0006.nii	\
	41	female	4.3019048463357	18.5063853069266	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave3_con_0006.nii	\
	42	female	-2.1090951536643	4.44828236721025	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave1_con_0006.nii	\
	42	female	0.637904846335697	0.40692259297857	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave2_con_0006.nii	\
	42	female	4.0719048463357	16.5804090776121	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave3_con_0006.nii	\
	44	male	-2.6090951536643	6.80737752087455	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L044_ses-wave1_con_0006.nii	\
	45	female	-2.6090951536643	6.80737752087455	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave1_con_0006.nii	\
	45	female	0.421904846335698	0.178003699361549	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave2_con_0006.nii	\
	45	female	3.6629048463357	13.4168719133095	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave3_con_0006.nii	\
	46	female	-2.4230951536643	5.87139012371143	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave1_con_0006.nii	\
	46	female	0.738349290780141	0.545159675195537	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave2_con_0006.nii	\
	46	female	3.7609048463357	14.1444052631913	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave3_con_0006.nii	\
	47	male	-1.9120951536643	3.65610787666652	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L047_ses-wave1_con_0006.nii	\
	48	female	-2.6230951536643	6.88062818517716	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L048_ses-wave1_con_0006.nii	\
	49	female	-2.2620951536643	5.11707448423153	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L049_ses-wave1_con_0006.nii	\
	49	female	0.554904846335697	0.307919388486844	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L049_ses-wave2_con_0006.nii	\
	51	female	-2.3950951536643	5.73648079510623	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L051_ses-wave1_con_0006.nii	\
	51	female	0.410904846335697	0.168842792742163	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L051_ses-wave2_con_0006.nii	\
	51	female	4.6189048463357	21.3342819795034	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L051_ses-wave3_con_0006.nii	\
	52	male	-2.5420951536643	6.46224777028353	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L052_ses-wave1_con_0006.nii	\
	53	male	-2.5480951536643	6.49278891212751	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L053_ses-wave1_con_0006.nii	\
	54	female	-2.4170951536643	5.84234898186746	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L054_ses-wave1_con_0006.nii	\
	54	female	0.865904846335697	0.749791202907647	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L054_ses-wave2_con_0006.nii	\
	55	male	-2.5670951536643	6.58997752796675	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave1_con_0006.nii	\
	55	male	1.0300159574468	1.06093287259504	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave2_con_0006.nii	\
	55	male	4.7589048463357	22.6471753364774	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave3_con_0006.nii	\
	56	female	-2.3030951536643	5.304247286832	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L056_ses-wave1_con_0006.nii	\
	57	female	-2.4200951536643	5.85686055278944	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave1_con_0006.nii	\
	57	female	1.05223817966903	1.1072051867532	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave2_con_0006.nii	\
	57	female	4.8889048463357	23.9013905965247	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave3_con_0006.nii	\
	58	female	-1.8780951536643	3.52724140621734	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave1_con_0006.nii	\
	58	female	0.635904846335697	0.404374973593226	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave2_con_0006.nii	\
	58	female	4.7689048463357	22.7424534334041	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave3_con_0006.nii	\
	59	female	-2.5370951536643	6.4368518187469	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave1_con_0006.nii	\
	59	female	1.0050159574468	1.0100570747227	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave2_con_0006.nii	\
	59	female	4.0789048463357	16.6374647454608	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave3_con_0006.nii	\
	60	female	-2.5670951536643	6.58997752796675	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave1_con_0006.nii	\
	60	female	0.576904846335697	0.332819201725615	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave2_con_0006.nii	\
	60	female	5.0389048463357	25.3905620504254	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave3_con_0006.nii	\
	61	male	-2.3920951536643	5.72211922418424	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L061_ses-wave1_con_0006.nii	\
	62	male	-1.8700951536643	3.49725588375872	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L062_ses-wave1_con_0006.nii	\
	63	male	-2.5310951536643	6.40644267690292	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L063_ses-wave1_con_0006.nii	\
	64	male	-2.5640951536643	6.57458395704476	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave1_con_0006.nii	\
	64	male	0.968904846335697	0.9387766012528	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave2_con_0006.nii	\
	64	male	4.5689048463357	20.8748914948698	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave3_con_0006.nii	\
	65	female	-1.8230951536643	3.32367593931427	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave1_con_0006.nii	\
	65	female	0.418904846335698	0.175481270283535	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave2_con_0006.nii	\
	65	female	3.9489048463357	15.5938494854135	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave3_con_0006.nii	\
	67	male	-2.4340951536643	5.92481921709205	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L067_ses-wave1_con_0006.nii	\
	68	female	-2.6030951536643	6.77610437903058	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L068_ses-wave1_con_0006.nii	\
	70	male	-2.4590951536643	6.04714897477526	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave1_con_0006.nii	\
	70	male	0.755015957446808	0.570049095999321	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave2_con_0006.nii	\
	70	male	3.8989048463357	15.20145900078	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave3_con_0006.nii	\
	71	male	-1.8200951536643	3.31274636839228	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave1_con_0006.nii	\
	71	male	1.51612706855792	2.29864128801403	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave2_con_0006.nii	\
	72	female	-1.9090951536643	3.64464430574453	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave1_con_0006.nii	\
	72	female	0.249904846335697	0.0624524322220685	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave2_con_0006.nii	\
	72	female	3.5219048463357	12.4038137466429	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave3_con_0006.nii	\
	73	male	-2.2560951536643	5.08996534238755	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave1_con_0006.nii	\
	73	male	0.732904846335698	0.537149513782353	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave2_con_0006.nii	\
	73	male	3.6719048463357	13.4828852005436	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave3_con_0006.nii	\
	74	male	-1.8730951536643	3.5084854546807	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave1_con_0006.nii	\
	74	male	0.332904846335698	0.110825636713794	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave2_con_0006.nii	\
	74	male	3.9689048463357	15.752205679267	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave3_con_0006.nii	\
	75	male	-1.8030951536643	3.2511521331677	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L075_ses-wave1_con_0006.nii	\
	76	male	-2.0420951536643	4.17015261661923	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave1_con_0006.nii	\
	76	male	0.787904846335698	0.620794046879279	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave2_con_0006.nii	\
	76	male	5.1989048463357	27.0286116012528	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave3_con_0006.nii	\
	77	female	-1.9030951536643	3.62177116390056	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L077_ses-wave1_con_0006.nii	\
	78	male	-1.8920951536643	3.58002407051994	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave1_con_0006.nii	\
	78	male	0.829904846335697	0.688742053971478	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave2_con_0006.nii	\
	78	male	4.9389048463357	24.3927810811582	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave3_con_0006.nii	\
	79	male	-2.0980951536643	4.40200327382964	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L079_ses-wave1_con_0006.nii	\
	80	female	-1.8620951536643	3.46739836130008	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave1_con_0006.nii	\
	80	female	0.843904846335697	0.712175389668876	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave2_con_0006.nii	\
	80	female	3.8911048463357	15.1406969251772	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave3_con_0006.nii	\
	81	male	-2.1250951536643	4.51602941212751	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave1_con_0006.nii	\
	81	male	-0.00309515366430269	0.00000957997620564634	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave2_con_0006.nii	\
	82	female	-2.4780951536643	6.1409555906145	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L082_ses-wave1_con_0006.nii	\
	82	female	0.430015957446809	0.184913723658896	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L082_ses-wave2_con_0006.nii	\
	82	female	4.6789048463357	21.8921505610637	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L082_ses-wave3_con_0006.nii	\
	83	female	-2.5870951536643	6.69306133411332	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L083_ses-wave1_con_0006.nii	\
	83	female	0.685571513002364	0.47000829944035	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L083_ses-wave2_con_0006.nii	\
	84	male	-2.4980951536643	6.24047939676108	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave1_con_0006.nii	\
	84	male	0.630015957446808	0.396920106637619	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave2_con_0006.nii	\
	84	male	4.2489048463357	18.053192393215	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave3_con_0006.nii	\
	85	female	-2.2590951536643	5.10351091330954	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L085_ses-wave1_con_0006.nii	\
	86	male	-1.9280951536643	3.71755092158377	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave1_con_0006.nii	\
	86	male	0.793904846335698	0.630284905035308	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave2_con_0006.nii	\
	86	male	5.0249048463357	25.249668714728	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave3_con_0006.nii	\
	87	male	-2.1840951536643	4.7702716402599	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave1_con_0006.nii	\
	87	male	0.599904846335697	0.359885824657056	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave2_con_0006.nii	\
	87	male	3.9133048463357	15.3139548203545	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave3_con_0006.nii	\
	88	male	-2.2120951536643	4.89336496886509	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave1_con_0006.nii	\
	88	male	0.921682624113474	0.8494988595927	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave2_con_0006.nii	\
	89	male	-2.1750951536643	4.73103892749394	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave1_con_0006.nii	\
	89	male	0.821904846335697	0.675527576430105	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave2_con_0006.nii	\
	89	male	4.1689048463357	17.3797676178013	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave3_con_0006.nii	\
	90	male	-2.4950951536643	6.2254998258391	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave1_con_0006.nii	\
	90	male	0.0269048463356967	0.000723870756347451	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave2_con_0006.nii	\
	90	male	3.3409048463357	11.1616451922693	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave3_con_0006.nii	\
	91	female	-2.3000951536643	5.29043771591001	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L091_ses-wave1_con_0006.nii	\
	92	female	-2.5420951536643	6.46224777028353	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L092_ses-wave1_con_0006.nii	\
	92	female	0.343904846335697	0.118270543333179	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L092_ses-wave2_con_0006.nii	\
	93	male	-2.6560951536643	7.054841465319	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L093_ses-wave1_con_0006.nii	\
	94	female	-1.9980951536643	3.99238424309678	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave1_con_0006.nii	\
	94	female	0.621904846335697	0.386765637895827	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave2_con_0006.nii	\
	94	female	3.5772048463357	12.7963945126476	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave3_con_0006.nii	\
	95	female	-2.6170951536643	6.84918704333318	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L095_ses-wave1_con_0006.nii	\
	96	female	-2.6090951536643	6.80737752087455	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave1_con_0006.nii	\
	96	female	0.504904846335696	0.254928903853273	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave2_con_0006.nii	\
	96	female	3.9789048463357	15.8316837761937	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave3_con_0006.nii	\
	97	male	-2.5090951536643	6.29555849014169	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L097_ses-wave1_con_0006.nii	
	
