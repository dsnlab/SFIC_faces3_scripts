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

cd /projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/allAff_age/

3dLME -prefix allAff_age \
-jobs 8 \
-model  "age_c*gender+age_c2*gender" \
-ranEff "~1" \
-SS_type 3 \
-qVars "age_c,age_c2" \
-qVarCenters "0,0" \
-resid	allAll_age_residuals \
-num_glt 4 \
-gltLabel 1 'age.male' -gltCode  1 'gender : 1*male age_c : ' \
-gltLabel 2 'age.female' -gltCode  2 'gender : 1*female age_c : ' \
-gltLabel 3 'age_sq.male' -gltCode  3 'gender : 1*male age_c2 : ' \
-gltLabel 4 'age_sq.female' -gltCode  4 'gender : 1*female age_c2 : ' \
-dataTable \
Subj	gender	age_c	age_c2	InputFile \
01	female	-2.05387016229713	4.21838264357443	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L001_ses-wave1_con_0006.nii \
01	female	1.02712983770287	1.05499570349953	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L001_ses-wave2_con_0006.nii \
03	female	-1.92887016229713	3.72054010300014	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L003_ses-wave1_con_0006.nii \
04	female	-2.75387016229713	7.58380087079041	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L004_ses-wave1_con_0006.nii \
05	male	-2.56187016229713	6.56317872846831	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave1_con_0006.nii \
05	male	0.499129837702872	0.249130594885296	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave2_con_0006.nii \
05	male	4.18512983770287	17.5153117584309	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave3_con_0006.nii \
06	female	-2.07287016229713	4.29679070974172	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L006_ses-wave1_con_0006.nii \
07	female	-2.14787016229713	4.61334623408629	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L007_ses-wave1_con_0006.nii \
07	female	0.852129837702872	0.726125260303523	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L007_ses-wave2_con_0006.nii \
08	male	1.09112983770287	1.1905643227255	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L008_ses-wave2_con_0006.nii \
09	male	-2.92287016229713	8.54316998564683	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave1_con_0006.nii \
09	male	0.188129837702872	0.0353928358341091	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave2_con_0006.nii \
10	female	-2.11987016229713	4.49384950499765	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L010_ses-wave1_con_0006.nii \
11	male	0.449129837702873	0.201717611115009	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L011_ses-wave2_con_0006.nii \
14	male	-2.55687016229713	6.53758502684534	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L014_ses-wave1_con_0006.nii \
15	male	-2.70387016229713	7.31091385456069	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L015_ses-wave1_con_0006.nii \
16	female	-1.97587016229713	3.90406289825608	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave1_con_0006.nii \
16	female	0.110129837702873	0.0121285811524611	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave2_con_0006.nii \
16	female	4.18512983770287	17.5153117584309	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave3_con_0006.nii \
17	male	-2.05087016229713	4.20606842260064	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave1_con_0006.nii \
17	male	0.877129837702872	0.769356752188667	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave2_con_0006.nii \
18	male	-2.65687016229713	7.05895905930476	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave1_con_0006.nii \
18	male	0.624129837702872	0.389538054311014	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave2_con_0006.nii \
18	male	3.98412983770287	15.8732905636743	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave3_con_0006.nii \
19	female	-2.20087016229713	4.84382947128978	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave1_con_0006.nii \
19	female	0.574129837702873	0.329625070540728	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave2_con_0006.nii \
19	female	4.05212983770287	16.4197562216019	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave3_con_0006.nii \
20	female	-2.46487016229713	6.07558491698267	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L020_ses-wave1_con_0006.nii \
20	female	0.596129837702872	0.355370783399652	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L020_ses-wave2_con_0006.nii \
22	female	-2.68687016229713	7.21927126904259	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave1_con_0006.nii \
22	female	0.141129837702874	0.0199176310900394	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave2_con_0006.nii \
22	female	3.45512983770287	11.9379221953847	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave3_con_0006.nii \
23	female	-2.76487016229713	7.64450701436094	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave1_con_0006.nii \
23	female	0.366129837702873	0.134051058056332	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave2_con_0006.nii \
23	female	3.44312983770287	11.8551430792798	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave3_con_0006.nii \
24	female	-2.59787016229713	6.7489293801537	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave1_con_0006.nii \
24	female	1.22412983770287	1.49849385955446	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave2_con_0006.nii \
24	female	3.96312983770287	15.7063981104908	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave3_con_0006.nii \
26	male	-2.55687016229713	6.53758502684534	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L026_ses-wave1_con_0006.nii \
28	male	-2.51487016229713	6.32457193321238	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave1_con_0006.nii \
28	male	0.371129837702872	0.13773735643336	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave2_con_0006.nii \
28	male	4.08212983770287	16.6637840118641	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave3_con_0006.nii \
29	female	-2.39287016229713	5.72582761361188	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave1_con_0006.nii \
29	female	0.449129837702873	0.201717611115009	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave2_con_0006.nii \
29	female	3.82132983770287	14.6025617285183	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave3_con_0006.nii \
30	male	-2.98687016229713	8.92139336642086	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave1_con_0006.nii \
30	male	0.721352059925072	0.520348794358145	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave2_con_0006.nii \
30	male	3.76612983770287	14.1837339544359	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave3_con_0006.nii \
31	female	-2.48987016229713	6.19945342509752	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L031_ses-wave1_con_0006.nii \
32	female	-2.93187016229713	8.59586264856818	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave1_con_0006.nii \
32	female	0.715796504369573	0.5123646356677	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave2_con_0006.nii \
32	female	2.41812983770287	5.84735191198892	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave3_con_0006.nii \
33	male	-2.90687016229713	8.44989414045332	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave1_con_0006.nii \
33	male	0.252129837702872	0.0635694550600768	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave2_con_0006.nii \
33	male	3.73802983770287	13.972867067557	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave3_con_0006.nii \
34	male	0.985129837702873	0.970480797132489	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L034_ses-wave2_con_0006.nii \
35	female	-2.68187016229713	7.19242756741962	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave1_con_0006.nii \
35	female	0.277129837702873	0.0768009469452206	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave2_con_0006.nii \
35	female	3.31812983770287	11.0099856198541	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave3_con_0006.nii \
36	female	-2.07887016229713	4.32170115168928	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L036_ses-wave1_con_0006.nii \
37	male	-2.60887016229713	6.80620352372423	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L037_ses-wave1_con_0006.nii \
38	male	-1.90387016229713	3.62472159488529	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave1_con_0006.nii \
38	male	0.805129837702873	0.648234055559455	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave2_con_0006.nii \
38	male	4.77412983770287	22.7923157072449	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave3_con_0006.nii \
39	female	-1.97887016229713	3.91592711922986	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L039_ses-wave1_con_0006.nii \
40	male	-2.64487016229713	6.99533817540964	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave1_con_0006.nii \
40	male	0.157129837702872	0.0246897858965308	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave2_con_0006.nii \
41	female	-2.75687016229713	7.60033309176419	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave1_con_0006.nii \
41	female	0.974129837702872	0.948928940703024	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave2_con_0006.nii \
41	female	4.20712983770287	17.6999414712898	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave3_con_0006.nii \
42	female	-2.20387016229713	4.85704369226357	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave1_con_0006.nii \
42	female	0.543129837702873	0.294990020603149	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave2_con_0006.nii \
42	female	3.97712983770287	15.8175617459465	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave3_con_0006.nii \
45	female	-2.70387016229713	7.31091385456069	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave1_con_0006.nii \
45	female	0.327129837702874	0.107013930715508	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave2_con_0006.nii \
45	female	3.56812983770287	12.7315505387055	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave3_con_0006.nii \
46	female	-2.51787016229713	6.33967015418616	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave1_con_0006.nii \
46	female	0.643574282147272	0.414187856641376	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave2_con_0006.nii \
46	female	3.66612983770287	13.4405079868953	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave3_con_0006.nii \
47	male	-2.00687016229713	4.0275278483185	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L047_ses-wave1_con_0006.nii \
48	female	-2.71787016229713	7.38681821910502	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L048_ses-wave1_con_0006.nii \
49	female	-2.35687016229713	5.55483696192649	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L049_ses-wave1_con_0006.nii \
49	female	0.460129837702873	0.211719467544472	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L049_ses-wave2_con_0006.nii \
51	female	-2.48987016229713	6.19945342509752	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L051_ses-wave1_con_0006.nii \
51	female	0.316129837702873	0.0999380742860445	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L051_ses-wave2_con_0006.nii \
51	female	4.52412983770287	20.4677507883934	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L051_ses-wave3_con_0006.nii \
52	male	-2.63687016229713	6.95308425281288	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L052_ses-wave1_con_0006.nii \
53	male	-2.64287016229713	6.98476269476044	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L053_ses-wave1_con_0006.nii \
54	female	-2.51187016229713	6.30949171223859	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L054_ses-wave1_con_0006.nii \
54	female	0.771129837702873	0.594641226595659	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L054_ses-wave2_con_0006.nii \
55	male	-2.66187016229713	7.08555276092773	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave1_con_0006.nii \
55	male	0.935240948813973	0.874675632338461	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave2_con_0006.nii \
55	male	4.66412983770287	21.7541071429502	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave3_con_0006.nii \
56	female	-2.39787016229713	5.74978131523485	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L056_ses-wave1_con_0006.nii \
57	female	-2.51487016229713	6.32457193321238	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave1_con_0006.nii \
57	female	0.957463171036173	0.916735723890643	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave2_con_0006.nii \
57	female	4.79412983770287	22.983680900753	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave3_con_0006.nii \
58	female	-1.97287016229713	3.89221667728229	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave1_con_0006.nii \
58	female	0.541129837702872	0.292821501252337	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave2_con_0006.nii \
58	female	4.67412983770287	21.8474897397043	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave3_con_0006.nii \
59	female	-2.63187016229713	6.92674055118991	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave1_con_0006.nii \
59	female	0.910240948813973	0.828538584897762	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave2_con_0006.nii \
59	female	3.98412983770287	15.8732905636743	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave3_con_0006.nii \
60	female	-2.66187016229713	7.08555276092773	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave1_con_0006.nii \
60	female	0.482129837702873	0.232449180403399	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave2_con_0006.nii \
60	female	4.94412983770287	24.4444198520639	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave3_con_0006.nii \
61	male	-2.48687016229713	6.18452320412374	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L061_ses-wave1_con_0006.nii \
62	male	-1.96487016229713	3.86071475468554	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L062_ses-wave1_con_0006.nii \
63	male	-2.62587016229713	6.89519410924234	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L063_ses-wave1_con_0006.nii \
64	male	-2.65887016229713	7.06959053995395	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave1_con_0006.nii \
64	male	0.874129837702872	0.76410297316245	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave2_con_0006.nii \
64	male	4.47412983770287	20.0178378046231	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave3_con_0006.nii \
65	female	-1.91787016229713	3.67822595942961	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave1_con_0006.nii \
65	female	0.324129837702873	0.105060151689291	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave2_con_0006.nii \
65	female	3.85412983770287	14.8543168058716	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave3_con_0006.nii \
67	male	-2.52887016229713	6.3951842977567	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L067_ses-wave1_con_0006.nii \
68	female	-2.69787016229713	7.27850341261313	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L068_ses-wave1_con_0006.nii \
70	male	-2.55387016229713	6.52225280587155	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave1_con_0006.nii \
70	male	0.660240948813973	0.435918110490775	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave2_con_0006.nii \
70	male	3.80412983770287	14.4714038221013	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave3_con_0006.nii \
71	male	-1.91487016229713	3.66672773845583	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave1_con_0006.nii \
71	male	1.42135205992507	2.02024167825325	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave2_con_0006.nii \
72	female	-2.00387016229713	4.01549562734472	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave1_con_0006.nii \
72	female	0.155129837702873	0.0240652665457197	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave2_con_0006.nii \
72	female	3.42712983770287	11.7452189244733	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave3_con_0006.nii \
73	male	-2.35087016229713	5.52659051997892	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave1_con_0006.nii \
73	male	0.638129837702873	0.407209689766696	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave2_con_0006.nii \
73	male	3.57712983770287	12.7958578757842	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave3_con_0006.nii \
74	male	-1.96787016229713	3.87251297565933	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave1_con_0006.nii \
74	male	3.87412983770287	15.0088819993797	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave3_con_0006.nii \
75	male	-1.89787016229713	3.60191115293773	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L075_ses-wave1_con_0006.nii \
76	male	-2.13687016229713	4.56621409051575	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave1_con_0006.nii \
76	male	0.693129837702873	0.480428971914011	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave2_con_0006.nii \
76	male	5.10412983770287	26.0521414001287	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave3_con_0006.nii \
77	female	-1.99787016229713	3.99148518539715	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L077_ses-wave1_con_0006.nii \
78	male	-1.98687016229713	3.94765304182661	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave1_con_0006.nii \
78	male	0.735129837702873	0.540415878281052	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave2_con_0006.nii \
78	male	4.84412983770287	23.4655938845233	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave3_con_0006.nii \
79	male	-2.19287016229713	4.80867954869303	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L079_ses-wave1_con_0006.nii \
80	female	-1.95687016229713	3.82934083208878	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave1_con_0006.nii \
80	female	0.749129837702872	0.561195513736732	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave2_con_0006.nii \
80	female	3.79632983770287	14.4121202366331	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave3_con_0006.nii \
81	male	-2.21987016229713	4.92782353745707	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave1_con_0006.nii \
81	male	-0.0978701622971272	0.00957856866806602	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave2_con_0006.nii \
82	female	-2.57287016229713	6.61966087203884	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L082_ses-wave1_con_0006.nii \
82	female	0.335240948813972	0.112386493761692	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L082_ses-wave2_con_0006.nii \
82	female	4.58412983770287	21.0142463689178	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L082_ses-wave3_con_0006.nii \
83	female	-2.68187016229713	7.19242756741962	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L083_ses-wave1_con_0006.nii \
83	female	0.590796504369573	0.349040509575307	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L083_ses-wave2_con_0006.nii \
84	male	0.535240948813973	0.286482873287282	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave2_con_0006.nii \
84	male	4.15412983770287	17.2567947084933	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave3_con_0006.nii \
85	female	-2.35387016229713	5.54070474095271	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L085_ses-wave1_con_0006.nii \
86	male	-2.02287016229713	4.09200369351201	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave1_con_0006.nii \
86	male	0.699129837702873	0.488782529966446	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave2_con_0006.nii \
86	male	4.93012983770287	24.3061802166081	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave3_con_0006.nii \
87	male	-2.27887016229713	5.19324921660814	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave1_con_0006.nii \
87	male	3.81852983770287	14.5811701214271	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave3_con_0006.nii \
88	male	-2.30687016229713	5.32164994569677	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave1_con_0006.nii \
88	male	0.826907615480673	0.683776204539932	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave2_con_0006.nii \
89	male	-2.26987016229713	5.15231055368679	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave1_con_0006.nii \
89	male	0.727129837702872	0.528717800877805	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave2_con_0006.nii \
89	male	4.07412983770287	16.5985339344608	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave3_con_0006.nii \
90	male	-2.58987016229713	6.70742745755695	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave1_con_0006.nii \
90	male	-0.0678701622971278	0.00460635893023847	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave2_con_0006.nii \
90	male	3.24612983770287	10.5373589232249	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave3_con_0006.nii \
91	female	-2.39487016229713	5.73540309426107	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L091_ses-wave1_con_0006.nii \
92	female	-2.63687016229713	6.95308425281288	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L092_ses-wave1_con_0006.nii \
92	female	0.249129837702872	0.0620656760338595	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L092_ses-wave2_con_0006.nii \
93	male	-2.75087016229713	7.56728664981663	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L093_ses-wave1_con_0006.nii \
94	female	-2.09287016229713	4.38010551623361	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave1_con_0006.nii \
94	female	0.527129837702873	0.277865865796657	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave2_con_0006.nii \
94	female	3.48242983770287	12.1273175745233	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave3_con_0006.nii \
95	female	-2.71187016229713	7.35423977715745	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L095_ses-wave1_con_0006.nii \
96	female	-2.70387016229713	7.31091385456069	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave1_con_0006.nii \
96	female	0.410129837702872	0.168206483774184	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave2_con_0006.nii \
96	female	3.88412983770287	15.0864645961337	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave3_con_0006.nii \
97	male	-2.60387016229713	6.78013982210127	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L097_ses-wave1_con_0006.nii