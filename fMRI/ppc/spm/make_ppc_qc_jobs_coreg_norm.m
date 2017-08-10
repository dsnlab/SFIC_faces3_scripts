% script to create ppc qc jobs
% 5.11.2017

% define paths
jobDir = '/Volumes/psych-cog/dsnlab/SFIC/scripts/fMRI/ppc/spm/QC_coreg_norm/';

addpath(jobDir)

% loop through subjects and replace subject ID, wave, reo parameters
for subCount = 1:96;
    
	if subCount < 10
		subID = ['sub-L00',num2str(subCount)];
	else
		subID = ['sub-L0',num2str(subCount)];
    end
    
	for tCount = 1:3
        
        fn1 = ['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/subjects/',subID,'/ses-wave',(num2str(tCount)),'/facesOB/ob_facesOB_0000.nii'];
        if exist(fn1, 'file')
        matlabbatch{1}.cfg_basicio.file_dir.dir_ops.cfg_cd.dir = {'/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/ppc_QC/coreg_norm'};
        matlabbatch{2}.spm.util.checkreg.data = {
                                                 ['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/subjects/',subID,'/ses-wave',(num2str(tCount)),'/structurals/ob_hires.nii,1']
                                                 ['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/subjects/',subID,'/ses-wave',(num2str(tCount)),'/facesOB/ob_facesOB_0010.nii,1']
                                                 ['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/subjects/',subID,'/ses-wave',(num2str(tCount)),'/facesOB/ob_facesOB_0045.nii,1']
                                                 ['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/subjects/',subID,'/ses-wave',(num2str(tCount)),'/facesOB/ob_facesOB_0090.nii,1']
                                                 };
        matlabbatch{3}.spm.util.print.fname = ['coreg_',subID,'_t',(num2str(tCount))];
        matlabbatch{3}.spm.util.print.fig.figname = 'Graphics';
        matlabbatch{3}.spm.util.print.opts = 'pdf';
        
        saveJob = [jobDir,[subID,'_t',num2str(tCount),'_coreg.mat']];
		save(saveJob,'matlabbatch');
		clear matlabbatch; 
        end
        
        fn2 = ['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/subjects/',subID,'/ses-wave',(num2str(tCount)),'/facesOB/wob_facesOB_0000.nii'];
        if exist(fn2, 'file')
        matlabbatch{1}.cfg_basicio.file_dir.dir_ops.cfg_cd.dir = {'/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/ppc_QC/coreg_norm'};
        matlabbatch{2}.spm.util.checkreg.data = {
                                                 '/Volumes/psych-cog/dsnlab/SFIC/scripts/fMRI/templates/templates/b_mni_icbm152_t2_tal_nlin_sym_09a.nii,1'
                                                 ['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/subjects/',subID,'/ses-wave',(num2str(tCount)),'/facesOB/wob_facesOB_0017.nii,1']
                                                 ['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/subjects/',subID,'/ses-wave',(num2str(tCount)),'/facesOB/wob_facesOB_0035.nii,1']
                                                 ['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/subjects/',subID,'/ses-wave',(num2str(tCount)),'/facesOB/wob_facesOB_0080.nii,1']
                                                 };
        matlabbatch{3}.spm.util.print.fname = ['norm_',subID,'_t',(num2str(tCount))];
        matlabbatch{3}.spm.util.print.fig.figname = 'Graphics';
        matlabbatch{3}.spm.util.print.opts = 'pdf';
        
        saveJob = [jobDir,[subID,'_t',num2str(tCount),'_norm.mat']];
		save(saveJob,'matlabbatch');
		clear matlabbatch; 
        end
	end
end
