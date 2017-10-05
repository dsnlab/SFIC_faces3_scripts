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
-num_glt 4 \
-gltLabel 1 'test' -gltCode  1 'test_c : ' \
-gltLabel 2 'test_sq' -gltCode  2 'test_c2 : ' \
-dataTable \
	Subj	gender	test_c	test_c2	age_c	age_c2	InputFile	\
	05	male	-48.9331305882353	2394.45126916529	-2.49581006535948	6.22906788234967	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave1_con_0006.nii	\
	05	male	-20.4846305882353	419.620090336465	0.565189934640523	0.319439662218959	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave2_con_0006.nii	\
	05	male	83.5748694117647	6984.75879719353	4.25118993464053	18.0726158603889	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave3_con_0006.nii	\
	08	male	-41.9261305882353	1757.80042610176	1.15718993464052	1.33908854483334	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L008_ses-wave2_con_0006.nii	\
	09	male	-53.1646305882353	2826.47794558352	-2.85681006535948	8.16136374953921	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave1_con_0006.nii	\
	09	male	-51.3286305882353	2634.62831806352	0.254189934640523	0.0646125228725536	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave2_con_0006.nii	\
	11	male	-57.2616305882353	3278.89433762352	-2.48481006535948	6.17428106091176	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L011_ses-wave1_con_0006.nii	\
	11	male	-24.1481305882353	583.132210906465	0.515189934640524	0.265420668754908	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L011_ses-wave2_con_0006.nii	\
	14	male	-28.8316305882353	831.262922376465	-2.49081006535948	6.20413478169608	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L014_ses-wave1_con_0006.nii	\
	15	male	-48.3196305882353	2334.78670018352	-2.63781006535948	6.95804194091176	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L015_ses-wave1_con_0006.nii	\
	17	male	-49.5141305882353	2451.64912790882	-1.98481006535948	3.93947099555229	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave1_con_0006.nii	\
	17	male	-3.57763058823529	12.7994406258768	0.943189934640523	0.889607252807195	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave2_con_0006.nii	\
	18	male	-41.4931305882353	1721.67988601235	-2.59081006535948	6.71229679476797	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave1_con_0006.nii	\
	18	male	-51.2501305882353	2626.57588531117	0.690189934640523	0.47636214587909	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave2_con_0006.nii	\
	18	male	35.3833694117647	1251.98283092941	4.05018993464052	16.4040385066634	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave3_con_0006.nii	\
	26	male	-34.8646305882353	1215.54246605411	-2.49081006535948	6.20413478169608	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L026_ses-wave1_con_0006.nii	\
	28	male	-20.7351305882353	429.945640511171	-2.44881006535948	5.99667073620588	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave1_con_0006.nii	\
	28	male	4.08686941176471	16.702501588818	0.437189934640523	0.191135038950985	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave2_con_0006.nii	\
	28	male	173.105869411765	29965.6420248029	4.14818993464052	17.2074797338529	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave3_con_0006.nii	\
	30	male	-37.0186305882353	1370.37901062823	-2.92081006535948	8.53113143790522	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave1_con_0006.nii	\
	30	male	80.5728694117647	6491.98728524529	0.787412156862723	0.620017904775206	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave2_con_0006.nii	\
	30	male	124.666869411765	15541.82832893	3.83218993464052	14.6856796951601	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave3_con_0006.nii	\
	33	male	-44.1986305882353	1953.51894587529	-2.84081006535948	8.07020182744771	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave1_con_0006.nii	\
	33	male	-24.9751305882353	623.757147899406	0.318189934640523	0.101244834506541	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave2_con_0006.nii	\
	33	male	59.3083694117647	3517.48268228235	3.80408993464052	14.4711002308333	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave3_con_0006.nii	\
	34	male	-48.4806305882353	2350.37154223293	-2.60181006535948	6.76941561620588	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L034_ses-wave1_con_0006.nii	\
	34	male	-8.00213058823529	64.0340939511709	1.05118993464052	1.10500027868955	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L034_ses-wave2_con_0006.nii	\
	37	male	-9.86393058823529	97.2971266495238	-2.54281006535948	6.46588302849346	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L037_ses-wave1_con_0006.nii	\
	38	male	-44.2236305882353	1955.7295024047	-1.83781006535948	3.37754583633661	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave1_con_0006.nii	\
	38	male	-0.654630588235293	0.428541207053285	0.871189934640524	0.758971902218961	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave2_con_0006.nii	\
	38	male	159.677369411765	25496.8623022612	4.84018993464052	23.4274386033954	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave3_con_0006.nii	\
	40	male	-22.2107305882353	493.316553263171	-2.57881006535948	6.65026135319935	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave1_con_0006.nii	\
	40	male	32.6733694117647	1067.54906871764	0.223189934640523	0.0498137469248409	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave2_con_0006.nii	\
	47	male	-36.6138305882353	1340.57259034399	-1.94081006535948	3.76674370980066	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L047_ses-wave1_con_0006.nii	\
	52	male	-28.8908305882353	834.680092078112	-2.57081006535948	6.60906439215359	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L052_ses-wave1_con_0006.nii	\
	53	male	-35.2115305882353	1239.85188636623	-2.57681006535948	6.63995011293791	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L053_ses-wave1_con_0006.nii	\
	55	male	-46.8115305882353	2191.31939601329	-2.59581006535948	6.73822989542157	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave1_con_0006.nii	\
	55	male	60.1323694117647	3615.90185107294	1.00130104575162	1.0026037842233	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave2_con_0006.nii	\
	55	male	96.6233694117647	9336.07551648235	4.73018993464052	22.3746968177745	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave3_con_0006.nii	\
	61	male	-31.5055305882353	992.598457646229	-2.42081006535948	5.86032137254575	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L061_ses-wave1_con_0006.nii	\
	62	male	-36.3238305882353	1319.42066860282	-1.89881006535948	3.60547966431046	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L062_ses-wave1_con_0006.nii	\
	63	male	-23.4611305882353	550.42464847823	-2.55981006535948	6.55262757071569	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L063_ses-wave1_con_0006.nii	\
	64	male	-35.9103305882353	1289.55184295635	-2.59281006535948	6.72266403502941	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave1_con_0006.nii	\
	64	male	111.881869411765	12517.5527030712	0.940189934640523	0.883957113199352	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave2_con_0006.nii	\
	64	male	78.3223694117647	6134.39355027293	4.54018993464052	20.6133246426111	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave3_con_0006.nii	\
	67	male	-35.9741305882353	1294.13807157941	-2.46281006535948	6.06543341803595	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L067_ses-wave1_con_0006.nii	\
	70	male	-49.6036305882353	2460.52016753411	-2.48781006535948	6.18919892130392	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave1_con_0006.nii	\
	70	male	5.66586941176472	32.1020761911711	0.726301045751624	0.527513209059903	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave2_con_0006.nii	\
	70	male	97.5048694117647	9507.19955900529	3.87018993464052	14.9783701301928	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave3_con_0006.nii	\
	71	male	-53.2701305882353	2837.70681288764	-1.84881006535948	3.41809865777451	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave1_con_0006.nii	\
	71	male	33.1003694117647	1095.63445519529	1.48741215686272	2.21239492438302	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave2_con_0006.nii	\
	73	male	-39.0181305882353	1522.41451460058	-2.28481006535948	5.22035703476797	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave1_con_0006.nii	\
	73	male	-2.12713058823529	4.52468453940621	0.704189934640524	0.495883464049026	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave2_con_0006.nii	\
	73	male	46.9043694117647	2200.01986991529	3.64318993464052	13.272832899866	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave3_con_0006.nii	\
	74	male	-57.5366305882353	3310.46385944705	-1.90181006535948	3.61688152470262	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave1_con_0006.nii	\
	74	male	-37.7451305882353	1424.69488312293	0.304189934640524	0.0925315163366063	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave2_con_0006.nii	\
	74	male	67.5323694117647	4560.62091836705	3.94018993464053	15.5250967210425	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave3_con_0006.nii	\
	75	male	-46.1581305882353	2130.57301940058	-1.83181006535948	3.35552811555229	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L075_ses-wave1_con_0006.nii	\
	76	male	-44.1401305882353	1948.35112834646	-2.07081006535948	4.28825432679412	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave1_con_0006.nii	\
	76	male	47.0103694117647	2209.97483223058	0.759189934640524	0.576369356859483	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave2_con_0006.nii	\
	76	male	93.2493694117647	8695.44489569176	5.17018993464052	26.7308639602582	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave3_con_0006.nii	\
	78	male	-36.4971305882353	1332.0405411747	-1.92081006535948	3.68951130718627	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave1_con_0006.nii	\
	78	male	18.2503694117647	333.075983665877	0.801189934640524	0.641905311369287	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave2_con_0006.nii	\
	78	male	66.1908694117647	4381.23119348529	4.91018993464052	24.1099651942451	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave3_con_0006.nii	\
	79	male	-47.4656305882353	2252.98608713882	-2.12681006535948	4.52332105411438	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L079_ses-wave1_con_0006.nii	\
	81	male	-48.8176305882353	2383.16105624941	-2.15381006535948	4.63889779764379	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave1_con_0006.nii	\
	81	male	-38.8686305882353	1510.7704438047	-0.0318100653594762	0.00101188025817415	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave2_con_0006.nii	\
	84	male	51.5773694117647	2660.22503543764	0.601301045751624	0.361562947621997	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave2_con_0006.nii	\
	84	male	74.9553694117647	5618.30740365411	4.22018993464052	17.8100030844412	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave3_con_0006.nii	\
	86	male	-34.3811305882353	1182.06214052529	-1.95681006535948	3.82910563189216	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave1_con_0006.nii	\
	86	male	19.7608694117647	390.491959908818	0.765189934640524	0.58551563607517	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave2_con_0006.nii	\
	86	male	140.699869411765	19796.4532524876	4.99618993464052	24.9619138630033	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave3_con_0006.nii	\
	87	male	-45.2396305882353	2046.62417575999	-2.21281006535948	4.89652838535621	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave1_con_0006.nii	\
	87	male	9.26386941176472	85.81927647823	0.571189934640524	0.326257941434646	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave2_con_0006.nii	\
	87	male	68.1603694117647	4645.83595834823	3.88458993464052	15.0900389603105	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave3_con_0006.nii	\
	88	male	-43.3621305882353	1880.27436915117	-2.24081006535948	5.02122974901634	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave1_con_0006.nii	\
	88	male	-7.78663058823529	60.6316159176415	0.892967712418324	0.797391335421615	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave2_con_0006.nii	\
	89	male	-54.7446305882353	2996.97457824235	-2.20381006535948	4.85677880417974	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave1_con_0006.nii	\
	89	male	-32.1446305882353	1033.27727565411	0.793189934640523	0.629150272415037	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave2_con_0006.nii	\
	89	male	29.5678694117647	874.258901551171	4.14018993464052	17.1411726948987	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave3_con_0006.nii	\
	90	male	-40.0491305882353	1603.93286087352	-2.52381006535948	6.36961724600981	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave1_con_0006.nii	\
	90	male	-6.09463058823529	37.1445220070532	-0.00181006535947681	0.00000327633660557791	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave2_con_0006.nii	\
	90	male	35.1008694117647	1232.07103346176	3.31218993464052	10.970602163134	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave3_con_0006.nii	\
	93	male	-57.6331305882353	3321.57774140058	-2.68481006535948	7.20820508705556	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L093_ses-wave1_con_0006.nii	\
	97	male	-55.6576305882353	3097.77184269646	-2.53781006535948	6.44047992783987	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L097_ses-wave1_con_0006.nii	