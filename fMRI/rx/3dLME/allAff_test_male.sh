#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=allAff_test_male
#SBATCH --output=output/allAff_test_male.log
#SBATCH --error=output/allAff_test_male_error.log
#SBATCH --cpus-per-task=25
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=fat,short

module load prl afni

cd /projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/allAff_test_male/

3dLME -prefix allAff_test_male \
-jobs 8 \
-model  "test_c+test_c2" \
-ranEff "~1" \
-SS_type 3 \
-qVars "test_c,test_c2" \
-qVarCenters "0,0" \
-resid	all_residuals	\
-dataTable \
Subj	gender	test_c	test_c2	age_c	age_c2	InputFile \
05	male	-50.5902111111111	2559.36946026679	-2.54780068587106	6.49128833492503	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave1_con_0006.nii \
05	male	-22.1417111111111	490.255370927901	0.513199314128943	0.263373536022418	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave2_con_0006.nii \
05	male	81.9177888888889	6710.52413644457	4.19919931412895	17.633274879781	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave3_con_0006.nii \
08	male	-43.5832111111111	1899.49629075568	1.10519931412894	1.22146552395109	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L008_ses-wave2_con_0006.nii \
09	male	-54.8217111111111	3005.42000915012	-2.90880068587106	8.46112143012392	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave1_con_0006.nii \
09	male	-52.9857111111111	2807.48558195012	0.202199314128944	0.0408845626342152	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave2_con_0006.nii \
11	male	-25.8052111111111	665.908920489012	0.463199314128945	0.214553604609525	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L011_ses-wave2_con_0006.nii \
14	male	-30.4887111111111	929.56150521679	-2.54280068587106	6.46583532806631	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L014_ses-wave1_con_0006.nii \
15	male	-49.9767111111111	2497.67165348346	-2.68980068587106	7.2350277297124	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L015_ses-wave1_con_0006.nii \
17	male	-51.1712111111111	2618.4928465779	-2.03680068587106	4.1485570339648	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave1_con_0006.nii \
17	male	-5.2347111111111	27.40220041679	0.891199314128944	0.794236217503899	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave2_con_0006.nii \
18	male	-43.1502111111111	1861.94071893346	-2.64280068587106	6.98439546524052	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave1_con_0006.nii \
18	male	-52.9072111111111	2799.17298755568	0.638199314128943	0.407298364554654	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave2_con_0006.nii \
18	male	33.7262888888889	1137.46256221679	3.99819931412894	15.9855977555012	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave3_con_0006.nii \
26	male	-36.5217111111111	1333.83538248346	-2.54280068587106	6.46583532806631	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L026_ses-wave1_con_0006.nii \
28	male	-22.3922111111111	501.411118444567	-2.50080068587106	6.25400407045314	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave1_con_0006.nii \
28	male	2.42978888888889	5.90387404456792	0.385199314128943	0.148378511605408	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave2_con_0006.nii \
28	male	171.448788888889	29394.6872114668	4.09619931412894	16.7788488210704	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave3_con_0006.nii \
30	male	-38.6757111111111	1495.81062995012	-2.97280068587106	8.83754391791542	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave1_con_0006.nii \
30	male	78.9157888888889	6227.70173595568	0.735421536351144	0.540844836129076	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave2_con_0006.nii \
30	male	123.009788888889	15131.408162489	3.78019931412894	14.2899068545409	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave3_con_0006.nii \
33	male	-45.8557111111111	2102.74624150568	-2.89280068587106	8.36829580817605	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave1_con_0006.nii \
33	male	-26.6322111111111	709.27466866679	0.266199314128944	0.07086207484272	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave2_con_0006.nii \
33	male	57.6512888888889	3323.67111055012	3.75209931412894	14.0782492630869	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave3_con_0006.nii \
34	male	-9.65921111111111	93.3003592890122	0.999199314128944	0.998399269355752	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L034_ses-wave2_con_0006.nii \
37	male	-11.5210111111111	132.733697022346	-2.59480068587106	6.7329905993969	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L037_ses-wave1_con_0006.nii \
38	male	-45.8807111111111	2105.03965206123	-1.88980068587106	3.57134663231872	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave1_con_0006.nii \
38	male	-2.31171111111111	5.34400826123456	0.819199314128944	0.671087516269333	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave2_con_0006.nii \
38	male	158.020288888889	24970.4117005279	4.78819931412894	22.9268526718249	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave3_con_0006.nii \
40	male	-23.8678111111111	569.672407235679	-2.63080068587106	6.92111224877962	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave1_con_0006.nii \
40	male	31.0162888888889	962.010176439013	0.171199314128943	0.0293092051582205	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave2_con_0006.nii \
47	male	-38.2709111111111	1464.66263727457	-1.99280068587106	3.97125457360815	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L047_ses-wave1_con_0006.nii \
52	male	-30.5479111111111	933.174873252345	-2.62280068587106	6.87908343780568	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L052_ses-wave1_con_0006.nii \
53	male	-36.8686111111111	1359.29448526235	-2.62880068587106	6.91059304603613	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L053_ses-wave1_con_0006.nii \
55	male	-48.4686111111111	2349.20626304012	-2.64780068587106	7.01084847209924	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave1_con_0006.nii \
55	male	58.4752888888889	3419.35941063901	0.949310425240045	0.901190283469434	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave2_con_0006.nii \
55	male	94.9662888888889	9018.5960253279	4.67819931412894	21.8855488227165	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave3_con_0006.nii \
61	male	-33.1626111111111	1099.75877570679	-2.47280068587106	6.11474323204436	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L061_ses-wave1_con_0006.nii \
62	male	-37.9809111111111	1442.54960883012	-1.95080068587106	3.80562331599499	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L062_ses-wave1_con_0006.nii \
63	male	-25.1182111111111	630.924529422346	-2.61180068587106	6.82150282271652	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L063_ses-wave1_con_0006.nii \
64	male	-37.5674111111111	1411.31037759123	-2.64480068587106	6.99497066798401	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave1_con_0006.nii \
64	male	110.224788888889	12149.5040856001	0.888199314128943	0.788898021619126	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave2_con_0006.nii \
64	male	76.6652888888889	5877.56652041679	4.48819931412894	20.1439330833475	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave3_con_0006.nii \
67	male	-37.6312111111111	1416.10804968901	-2.51480068587106	6.32422248965754	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L067_ses-wave1_con_0006.nii \
70	male	-51.2607111111111	2627.66050361679	-2.53980068587106	6.45058752395108	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave1_con_0006.nii \
70	male	4.0087888888889	16.0703883556791	0.674310425240044	0.454694549587409	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave2_con_0006.nii \
70	male	95.8477888888889	9186.79863488901	3.81819931412894	14.5786460024147	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave3_con_0006.nii \
71	male	-54.9272111111111	3016.99852044457	-1.90080068587106	3.61304324740788	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave1_con_0006.nii \
71	male	31.4432888888889	988.680416150124	1.43542153635114	2.06043498702068	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave2_con_0006.nii \
73	male	-40.6752111111111	1654.47279893346	-2.33680068587106	5.46063744548744	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave1_con_0006.nii \
73	male	-3.78421111111111	14.3202537334567	0.652199314128945	0.425363945350266	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave2_con_0006.nii \
73	male	45.2472888888889	2047.31715179457	3.59119931412894	12.8967125138002	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave3_con_0006.nii \
74	male	-59.1937111111111	3503.89543510568	-1.95380068587106	3.81733712011021	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave1_con_0006.nii \
74	male	65.8752888888889	4339.55368619457	3.88819931412895	15.1180939063928	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave3_con_0006.nii \
75	male	-47.8152111111111	2286.29441360012	-1.88380068587106	3.54870502408826	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L075_ses-wave1_con_0006.nii \
76	male	-45.7972111111111	2097.38454555568	-2.12280068587106	4.50628275193462	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave1_con_0006.nii \
76	male	45.3532888888889	2056.92081303901	0.707199314128944	0.500130869904449	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave2_con_0006.nii \
76	male	91.5922888888889	8389.14738390568	5.11819931412894	26.19596421915	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave3_con_0006.nii \
78	male	-38.1542111111111	1455.74382551123	-1.97280068587106	3.89194254617331	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave1_con_0006.nii \
78	male	16.5932888888889	275.337236150124	0.749199314128944	0.56129961229128	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave2_con_0006.nii \
78	male	64.5337888888889	4164.60990835568	4.85819931412894	23.6021005758029	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave3_con_0006.nii \
79	male	-49.1227111111111	2413.04074690568	-2.17880068587106	4.74717242875219	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L079_ses-wave1_con_0006.nii \
81	male	-50.4747111111111	2547.69646175012	-2.20580068587106	4.86555666578922	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave1_con_0006.nii \
81	male	-40.5257111111111	1642.33326106123	-0.083800685871056	0.00702255495245941	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave2_con_0006.nii \
84	male	49.9202888888889	2492.03524275012	0.549310425240044	0.301741943277398	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave2_con_0006.nii \
84	male	73.2982888888889	5372.63915403901	4.16819931412894	17.373885522305	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave3_con_0006.nii \
86	male	-36.0382111111111	1298.75266008901	-2.00880068587106	4.03528019555603	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave1_con_0006.nii \
86	male	18.1037888888889	327.747172133457	0.713199314128945	0.508653261673997	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave2_con_0006.nii \
86	male	139.042788888889	19332.8971420001	4.94419931412894	24.4451068578331	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave3_con_0006.nii \
87	male	-46.8967111111111	2199.30151303901	-2.26480068587106	5.12932214672201	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave1_con_0006.nii \
87	male	66.5032888888889	4422.68743303901	3.83259931412894	14.6888175026616	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave3_con_0006.nii \
88	male	-45.0192111111111	2026.72936906679	-2.29280068587106	5.25693498513078	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave1_con_0006.nii \
88	male	-9.44371111111111	89.1836795501234	0.840977091906744	0.707242469111924	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave2_con_0006.nii \
89	male	-56.4017111111111	3181.15301626123	-2.25580068587106	5.08863673437633	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave1_con_0006.nii \
89	male	-33.8017111111111	1142.55567403901	0.741199314128943	0.549376423265216	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave2_con_0006.nii \
89	male	27.9107888888889	779.012136400123	4.08819931412894	16.7133736320444	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave3_con_0006.nii \
90	male	-41.7062111111111	1739.40804524457	-2.57580068587106	6.63474917333381	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave1_con_0006.nii \
90	male	-7.75171111111111	60.0890251501234	-0.0538006858710567	0.00289451380019612	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave2_con_0006.nii \
90	male	33.4437888888889	1118.48701524457	3.26019931412894	10.6288995678468	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave3_con_0006.nii \
93	male	-59.2902111111111	3515.32913360012	-2.73680068587106	7.49007799418429	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L093_ses-wave1_con_0006.nii \
97	male	-57.3147111111111	3284.97610975012	-2.58980068587106	6.70706759253819	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L097_ses-wave1_con_0006.nii