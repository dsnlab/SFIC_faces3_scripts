#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=allAff_logtest
#SBATCH --output=output/allAff_logtest.log
#SBATCH --error=output/allAff_logtest_error.log
#SBATCH --cpus-per-task=25
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=fat,short

module load prl afni

cd /projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/allAff_logtest/

3dLME -prefix allAff_logtest \
-jobs 8 \
-model  "logtest_c*gender+logtest_c2*gender" \
-ranEff "~1" \
-SS_type 3 \
-qVars "logtest_c,logtest_c2" \
-qVarCenters "0,0" \
-resid	allAff_logtest_residuals \
-num_glt 4 \
-gltLabel 1 'test.male' -gltCode  1 'gender : 1*male logtest_c : ' \
-gltLabel 2 'test.female' -gltCode  2 'gender : 1*female logtest_c : ' \
-gltLabel 3 'test_sq.male' -gltCode  3 'gender : 1*male logtest_c2 : ' \
-gltLabel 4 'test_sq.female' -gltCode  4 'gender : 1*female logtest_c2 : ' \
-dataTable \
Subj	gender	logtest_c	logtest_c2	age_c	age_c2	InputFile \
01	female	-0.650483642722672	0.423128969449757	-2.04172190109184	4.16862832139809	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L001_ses-wave1_con_0006.nii \
01	female	-1.13248702252763	1.2825268561935	1.03927809890816	1.08009896687015	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L001_ses-wave2_con_0006.nii \
03	female	-0.763636356028322	0.583140484248215	-1.91672190109184	3.67382284612512	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L003_ses-wave1_con_0006.nii \
04	female	-1.05887392839658	1.12121399623801	-2.74172190109184	7.51703898292667	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L004_ses-wave1_con_0006.nii \
05	male	-0.923285450963352	0.852456023960601	-2.54972190109184	6.5010817729074	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave1_con_0006.nii \
05	male	0.115895553795668	0.0134317793896045	0.511278098908157	0.261405294423139	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave2_con_0006.nii \
05	male	1.32899278755368	1.76622182936969	4.19727809890816	17.6171434395741	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave3_con_0006.nii \
06	female	-0.394998222359093	0.156023595666843	-2.06072190109184	4.24657475363958	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L006_ses-wave1_con_0006.nii \
07	female	-0.564150780972183	0.318266103671524	-2.13572190109184	4.56130803880336	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L007_ses-wave1_con_0006.nii \
07	female	-0.410125026070013	0.168202537008929	0.864278098908157	0.746976632252298	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L007_ses-wave2_con_0006.nii \
08	male	-0.551739609950372	0.304416597188189	1.10327809890816	1.2172225635304	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L008_ses-wave2_con_0006.nii \
09	male	-1.24037949167321	1.5385412833635	-2.91072190109184	8.4723019854957	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave1_con_0006.nii \
09	male	-1.09032494077237	1.18880847647028	0.200278098908157	0.0401113169022656	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave2_con_0006.nii \
10	female	-0.422833250367053	0.178787957615967	-2.10772190109184	4.44249161234221	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L010_ses-wave1_con_0006.nii \
11	male	0.0290049809903477	0.000841288922250429	0.461278098908158	0.212777484532325	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L011_ses-wave2_con_0006.nii \
14	male	-0.0943517644835024	0.0089022554611503	-2.54472190109184	6.47560955389648	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L014_ses-wave1_con_0006.nii \
15	male	-0.884644101008552	0.78259518544923	-2.69172190109184	7.24536679281748	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L015_ses-wave1_con_0006.nii \
16	female	-0.422794318653272	0.178755035885485	-1.96372190109184	3.85620370482776	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave1_con_0006.nii \
16	female	-0.172297774823623	0.0296865232091717	0.122278098908158	0.0149519334725932	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave2_con_0006.nii \
16	female	0.111649891247968	0.012465698215683	4.19727809890816	17.6171434395741	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave3_con_0006.nii \
17	male	-0.961309859681382	0.924116646320639	-2.03872190109184	4.15638698999153	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave1_con_0006.nii \
17	male	0.440924752016098	0.194414636940457	0.889278098908157	0.790815537197706	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave2_con_0006.nii \
18	male	-0.532744061710512	0.283816235287814	-2.64472190109184	6.99455393411484	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave1_con_0006.nii \
18	male	-1.08438504097057	1.17589091708075	0.636278098908157	0.404849819150179	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave2_con_0006.nii \
18	male	0.935294683201577	0.874776144425139	3.99627809890816	15.970238643813	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave3_con_0006.nii \
19	female	-1.03863518569231	1.0787630489581	-2.18872190109184	4.79050356031909	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave1_con_0006.nii \
19	female	0.166241681756297	0.0276362967531621	0.586278098908158	0.343722009259364	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave2_con_0006.nii \
19	female	0.433470175784528	0.187896393294669	4.06427809890816	16.5183564652645	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave3_con_0006.nii \
20	female	-0.941168524402512	0.885798191326002	-2.45272190109184	6.01584472409559	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L020_ses-wave1_con_0006.nii \
22	female	-0.742270509899733	0.550965509866809	-2.67472190109184	7.15413724818036	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave1_con_0006.nii \
22	female	-0.126236562958972	0.0159356698276946	0.153278098908158	0.0234941756048992	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave2_con_0006.nii \
22	female	0.157694343049418	0.0248675058297874	3.46727809890816	12.0220174151682	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave3_con_0006.nii \
23	female	-0.896827623898063	0.804299786986645	-2.75272190109184	7.57747786475069	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave1_con_0006.nii \
23	female	-0.374034743559923	0.139901989389937	0.378278098908158	0.14309432011357	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave2_con_0006.nii \
23	female	0.446040690077918	0.198952297205185	3.45527809890816	11.9389467407944	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave3_con_0006.nii \
24	female	-0.807416510196223	0.651921420937447	-2.58572190109184	6.68595774978601	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave1_con_0006.nii \
24	female	-0.195691550978843	0.038295183124505	1.23627809890816	1.52838353783997	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave2_con_0006.nii \
24	female	-0.195350370491063	0.0381617672509954	3.97527809890816	15.8028359636589	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave3_con_0006.nii \
26	male	-0.279618211330142	0.0781863441074682	-2.54472190109184	6.47560955389648	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L026_ses-wave1_con_0006.nii \
28	male	0.110188770491237	0.0121415651423706	-2.50272190109184	6.26361691420477	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave1_con_0006.nii \
28	male	0.559416029144058	0.312946293663306	0.383278098908157	0.146902101102651	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave2_con_0006.nii \
28	male	1.80187500200159	3.24675352283822	4.09427809890816	16.763113151199	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave3_con_0006.nii \
29	female	-0.313815883566873	0.0984804087788569	-2.38072190109184	5.66783677033836	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave1_con_0006.nii \
29	female	0.319779622613558	0.102259007038869	0.461278098908158	0.212777484532325	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave2_con_0006.nii \
29	female	0.415071275493637	0.172284163739915	3.83347809890816	14.6955543348085	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave3_con_0006.nii \
30	male	-0.355064905665262	0.126071087235082	-2.97472190109184	8.84897038883546	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave1_con_0006.nii \
30	male	1.30851164811046	1.71220273324075	0.733500321130357	0.538022721098337	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave2_con_0006.nii \
30	male	1.57389677341105	2.47715105335371	3.77827809890816	14.275385392689	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave3_con_0006.nii \
31	female	-0.652000239965493	0.42510431291506	-2.47772190109184	6.13910581915017	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L031_ses-wave1_con_0006.nii \
32	female	-0.981626927864742	0.963591425509172	-2.91972190109184	8.52477597971536	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave1_con_0006.nii \
32	female	-0.663721047837273	0.440525629342207	0.727944765574858	0.529903581727834	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave2_con_0006.nii \
32	female	-0.108793926690963	0.0118361184848385	2.43027809890816	5.90625163803265	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave3_con_0006.nii \
33	male	-0.657818848871623	0.432725637930787	-2.89472190109184	8.37941488466077	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave1_con_0006.nii \
33	male	0.00829999659702763	0.0000688899435106702	0.264278098908157	0.0698429135625097	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave2_con_0006.nii \
33	male	1.15001652044352	1.32253799729302	3.75017809890816	14.0638357735304	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave3_con_0006.nii \
34	male	0.365533853376348	0.133614997964161	0.997278098908158	0.994563606561869	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L034_ses-wave2_con_0006.nii \
35	female	0.313930327062327	0.0985522502494599	-2.66972190109184	7.12741502916944	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave1_con_0006.nii \
35	female	0.0943686070350274	0.00890543399373142	0.289278098908158	0.0836818185079178	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave2_con_0006.nii \
35	female	0.268111822685977	0.071883949463997	3.33027809890816	11.0907522160673	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave3_con_0006.nii \
36	female	0.0327371361072575	0.0010717200805051	-2.06672190109184	4.27133941645268	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L036_ses-wave1_con_0006.nii \
37	male	0.332028296242458	0.110242789505669	-2.59672190109184	6.74296463161003	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L037_ses-wave1_con_0006.nii \
38	male	-0.659050740226772	0.434347878193457	-1.89172190109184	3.57861175107054	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave1_con_0006.nii \
38	male	0.487784532589888	0.237933750233935	0.817278098908158	0.667943490954933	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave2_con_0006.nii \
38	male	1.74370057157226	3.04049168330142	4.78627809890816	22.9084580400879	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave3_con_0006.nii \
39	female	-0.121711883942402	0.0148137826928088	-1.96672190109184	3.86799503623431	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L039_ses-wave1_con_0006.nii \
40	male	0.0758948088697875	0.00576002201338158	-2.63272190109184	6.93122460848865	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave1_con_0006.nii \
40	male	0.907789612872318	0.824081981238873	0.169278098908157	0.0286550747699596	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave2_con_0006.nii \
41	female	-1.03876491916228	1.07903255728222	-2.74472190109184	7.53349831433322	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave1_con_0006.nii \
41	female	0.478706719393588	0.229160123192571	0.986278098908157	0.972744488385888	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave2_con_0006.nii \
41	female	-0.161162523816922	0.0259733590830401	4.21927809890816	17.802307675926	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave3_con_0006.nii \
42	female	-0.508322818391783	0.258392087697765	-2.19172190109184	4.80364489172564	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave1_con_0006.nii \
42	female	-0.530508599417252	0.281439374055655	0.555278098908158	0.308333767127058	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave2_con_0006.nii \
42	female	0.269310916198077	0.0725283695834478	3.98927809890816	15.9143397504283	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave3_con_0006.nii \
45	female	-0.341668419923182	0.116737309172804	-2.69172190109184	7.24536679281748	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave1_con_0006.nii \
45	female	-0.457210831229823	0.209041744193865	0.339278098908158	0.115109628398734	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave2_con_0006.nii \
45	female	1.11934417456892	1.25293138114137	3.58027809890816	12.8183912655214	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave3_con_0006.nii \
46	female	0.00251298305099734	0.00000631508381459991	-2.50572190109184	6.27864224561132	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave1_con_0006.nii \
46	female	-0.240304075278583	0.0577460485954947	0.655722543352557	0.429972053860746	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave2_con_0006.nii \
46	female	0.206236003879507	0.0425332892961882	3.67827809890816	13.5297297729074	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave3_con_0006.nii \
47	male	-0.340445068469682	0.115902844645327	-1.99472190109184	3.97891546269546	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L047_ses-wave1_con_0006.nii \
48	female	-0.573743515628343	0.32918162172557	-2.70572190109184	7.32093100604806	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L048_ses-wave1_con_0006.nii \
49	female	-0.101551008981203	0.0103126074251003	-2.34472190109184	5.49772079345975	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L049_ses-wave1_con_0006.nii \
51	female	-0.00430632475945236	0.0000185444329338724	-2.47772190109184	6.13910581915017	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L051_ses-wave1_con_0006.nii \
51	female	0.992866250220748	0.985783390827409	4.53627809890816	20.5778189906338	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L051_ses-wave3_con_0006.nii \
52	male	-0.0960126381143023	0.00921842667766797	-2.62472190109184	6.88916505807117	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L052_ses-wave1_con_0006.nii \
53	male	-0.291390818581982	0.0849086091538778	-2.63072190109184	6.92069772088428	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L053_ses-wave1_con_0006.nii \
54	female	-0.527145302036522	0.277882169459176	-2.49972190109184	6.24860958279821	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L054_ses-wave1_con_0006.nii \
54	female	0.0934861993983573	0.00873966947794943	0.783278098908157	0.613524580229177	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L054_ses-wave2_con_0006.nii \
55	male	-0.795556888439192	0.63291076274305	-2.64972190109184	7.02102615312577	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave1_con_0006.nii \
55	male	1.15664964344335	1.33783839767762	0.947389210019258	0.897546315260914	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave2_con_0006.nii \
55	male	1.41344230257719	1.9978191427147	4.67627809890816	21.8675768583281	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave3_con_0006.nii \
56	female	-1.21225270544526	1.46955662185936	-2.38572190109184	5.69166898934928	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L056_ses-wave1_con_0006.nii \
57	female	-0.252178114561212	0.0635938014636479	-2.50272190109184	6.26361691420477	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave1_con_0006.nii \
57	female	-0.233740950573893	0.0546348319751869	0.969611432241457	0.94014632953333	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave2_con_0006.nii \
57	female	0.561942284969518	0.315779131636763	4.80627809890816	23.1003091640442	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave3_con_0006.nii \
58	female	0.00766483413477737	0.0000587496823136483	-1.96072190109184	3.84443037342121	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave1_con_0006.nii \
58	female	-0.0599252176066623	0.00359103170520582	0.553278098908157	0.306116654731424	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave2_con_0006.nii \
58	female	0.814033609902487	0.662650718050875	4.68627809890816	21.9612024203062	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave3_con_0006.nii \
59	female	0.0845510575616877	0.00714888133479982	-2.61972190109184	6.86294283906026	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave1_con_0006.nii \
59	female	0.726497589161417	0.527798747057351	0.922389210019258	0.850801854759951	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave2_con_0006.nii \
59	female	0.810387793170607	0.656728375319927	3.99627809890816	15.970238643813	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave3_con_0006.nii \
60	female	-0.250636554459812	0.0628186824314865	-2.64972190109184	7.02102615312577	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave1_con_0006.nii \
60	female	0.717339698252318	0.514576242688726	0.494278098908158	0.244310839060262	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave2_con_0006.nii \
60	female	0.318407702266378	0.101383464862554	4.95627809890816	24.5646925937167	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave3_con_0006.nii \
61	male	-0.172264440530662	0.0296750374713421	-2.47472190109184	6.12424848774362	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L061_ses-wave1_con_0006.nii \
62	male	-0.330101243296562	0.108966830825936	-1.95272190109184	3.81312282300374	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L062_ses-wave1_con_0006.nii \
63	male	0.0458847812883976	0.00210541315388408	-2.61372190109184	6.83154217624716	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L063_ses-wave1_con_0006.nii \
64	male	-0.315534997598502	0.0995623347094869	-2.64672190109184	7.00513682171922	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave1_con_0006.nii \
64	male	1.50392056400031	2.261777062823	0.886278098908157	0.785488868604257	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave2_con_0006.nii \
64	male	1.29287772768416	1.67153281874175	4.48627809890816	20.126691180743	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave3_con_0006.nii \
65	female	0.233503655648148	0.0545239572010487	-1.90572190109184	3.63177596430111	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave1_con_0006.nii \
65	female	-0.0509602957786224	0.00259695174584468	0.336278098908158	0.113082959805285	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave2_con_0006.nii \
65	female	0.763383418892847	0.582754244240532	3.86627809890816	14.9481063380969	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave3_con_0006.nii \
67	male	-0.317768665276723	0.10097692463175	-2.51672190109184	6.33388912743534	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L067_ses-wave1_con_0006.nii \
70	male	-0.967298001686212	0.93566542406614	-2.54172190109184	6.46035022248993	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave1_con_0006.nii \
70	male	0.582175239555548	0.338928009551559	0.672389210019258	0.452107249750322	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave2_con_0006.nii \
70	male	1.41889818101077	2.01327204807566	3.81627809890816	14.5639785282061	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave3_con_0006.nii \
71	male	-1.24972597507427	1.56181501277534	-1.90272190109184	3.62035063289456	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave1_con_0006.nii \
71	male	0.912173963578758	0.832061339830981	1.43350032113036	2.05492317068084	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave2_con_0006.nii \
72	female	0.376727015062877	0.141923243878185	-1.99172190109184	3.96695613128891	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave1_con_0006.nii \
72	female	0.758341691884267	0.575082121649893	0.167278098908158	0.0279819623743274	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave2_con_0006.nii \
73	male	-0.430591362462952	0.185408921427702	-2.33872190109184	5.46962013064664	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave1_con_0006.nii \
73	male	0.464452768395918	0.215716374070632	0.650278098908158	0.422861605919608	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave2_con_0006.nii \
73	male	1.04445272142212	1.09088148728607	3.58927809890816	12.8829172713018	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave3_con_0006.nii \
74	male	-1.72735988713413	2.98377217968004	-1.95572190109184	3.82484815441029	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave1_con_0006.nii \
74	male	1.21432609243772	1.47458785877506	3.88627809890816	15.1031574620532	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave3_con_0006.nii \
75	male	-0.759293807314982	0.576527085826882	-1.88572190109184	3.55594708825743	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L075_ses-wave1_con_0006.nii \
76	male	-0.654942139611182	0.428949206238473	-2.12472190109184	4.51444315697933	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave1_con_0006.nii \
76	male	1.04540371398005	1.09286892520328	0.705278098908158	0.497417196799505	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave2_con_0006.nii \
76	male	1.39228014645187	1.93844400620403	5.11627809890816	26.1763015853673	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave3_con_0006.nii \
77	female	-0.342950777625223	0.117615235873745	-1.98572190109184	3.9430914684758	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L077_ses-wave1_con_0006.nii \
78	male	-0.336269697059203	0.113077309160288	-1.97472190109184	3.89952658665178	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave1_con_0006.nii \
78	male	0.747130596593687	0.558204128366439	0.747278098908158	0.55842455710779	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave2_con_0006.nii \
78	male	1.20411413501265	1.44989085013726	4.85627809890816	23.583436973935	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave3_con_0006.nii \
79	male	-0.833225702463902	0.694265071246463	-2.18072190109184	4.75554800990162	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L079_ses-wave1_con_0006.nii \
80	female	-0.846339869793943	0.716291175202828	-1.94472190109184	3.78194327258627	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave1_con_0006.nii \
80	female	0.205519719805928	0.042238355229107	0.761278098908157	0.579544343877218	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave2_con_0006.nii \
80	female	0.605542335375147	0.366681519931588	3.80847809890816	14.5045054298631	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave3_con_0006.nii \
81	male	-0.915895663819562	0.838864867003477	-2.20772190109184	4.87403599256058	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave1_con_0006.nii \
81	male	-0.424742763437032	0.180406415092127	-0.0857219010918424	0.00734824432679961	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave2_con_0006.nii \
82	female	-0.406230872921963	0.16502352211494	-2.56072190109184	6.55729665473142	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L082_ses-wave1_con_0006.nii \
82	female	0.759231501828227	0.576432473368345	0.347389210019257	0.120679263237803	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L082_ses-wave2_con_0006.nii \
82	female	0.680737105624348	0.463403006973814	4.59627809890816	21.1257723625028	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L082_ses-wave3_con_0006.nii \
83	female	-0.753912335898033	0.568383810219228	-2.66972190109184	7.12741502916944	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L083_ses-wave1_con_0006.nii \
83	female	0.654007605712387	0.42772594832965	0.602944765574858	0.36354239033412	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L083_ses-wave2_con_0006.nii \
84	male	1.08554126450358	1.17839983694003	0.547389210019258	0.299634947245507	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave2_con_0006.nii \
84	male	1.2690215263323	1.61041563429475	4.16627809890816	17.3578731974418	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave3_con_0006.nii \
85	female	0.105872867671048	0.0112090641088912	-2.34172190109184	5.48366146205319	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L085_ses-wave1_con_0006.nii \
86	male	-0.263437684472453	0.0693994136002075	-2.01072190109184	4.0430025635304	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave1_con_0006.nii \
86	male	0.765218581469327	0.58555947742593	0.711278098908158	0.505916533986404	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave2_con_0006.nii \
86	male	1.65524959875993	2.7398512341949	4.94227809890816	24.4261128069472	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave3_con_0006.nii \
87	male	-0.710443949168003	0.504730604909427	-2.26672190109184	5.13802817688942	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave1_con_0006.nii \
87	male	1.21907104189625	1.48613420519	3.83067809890816	14.6740946974546	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave3_con_0006.nii \
88	male	-0.617450999268832	0.38124573649808	-2.29472190109184	5.26574860335056	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave1_con_0006.nii \
88	male	0.369340555464448	0.136412445910787	0.839055876685958	0.704014764201241	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave2_con_0006.nii \
89	male	-1.39041625209055	1.93325735407754	-2.25772190109184	5.09730818266977	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave1_con_0006.nii \
89	male	-0.191821337466353	0.0367954255073804	0.739278098908157	0.546532107525259	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave2_con_0006.nii \
89	male	0.875311195908677	0.766169689683079	4.08627809890816	16.6976687016165	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave3_con_0006.nii \
90	male	-0.471884296123033	0.22267478892753	-2.57772190109184	6.64465019936855	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave1_con_0006.nii \
90	male	0.398735787482068	0.158990228218945	-0.0557219010918431	0.00310493026128914	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave2_con_0006.nii \
90	male	0.932462523028427	0.86948635685254	3.25827809890816	10.6163761698246	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave3_con_0006.nii \
91	female	-0.775614195932672	0.601577380932286	-2.38272190109184	5.67736365794273	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L091_ses-wave1_con_0006.nii \
92	female	-0.676132422111052	0.457155052229758	-2.62472190109184	6.88916505807117	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L092_ses-wave1_con_0006.nii \
92	female	0.422321028249937	0.178355050902084	0.261278098908157	0.0682662449690607	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L092_ses-wave2_con_0006.nii \
93	male	-1.74130469602961	3.03214204441478	-2.73872190109184	7.50059765152012	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L093_ses-wave1_con_0006.nii \
94	female	-0.676132422111052	0.457155052229758	-2.08072190109184	4.32940362968325	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave1_con_0006.nii \
94	female	-0.270600442262862	0.0732245993528567	0.539278098908158	0.290820867961997	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave2_con_0006.nii \
94	female	-0.0616329284698827	0.00379861787177367	3.49457809890816	12.2120760893685	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave3_con_0006.nii \
95	female	-1.13836215355504	1.29586839264647	-2.69972190109184	7.28849834323496	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L095_ses-wave1_con_0006.nii \
96	female	-0.350020621489933	0.122514435468199	-2.69172190109184	7.24536679281748	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave1_con_0006.nii \
96	female	0.914691142599128	0.836659886349298	0.422278098908157	0.178318792817487	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave2_con_0006.nii \
96	female	0.417367680905507	0.174195781064441	3.89627809890816	15.1809830240314	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave3_con_0006.nii \
97	male	-1.48862494747408	2.21600423424221	-2.59172190109184	6.71702241259911	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L097_ses-wave1_con_0006.nii 