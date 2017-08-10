%% script to create ppc qc jobs - COMPARING DANI, JOHN AND MY ALIGNMENTS FOR
% SFIC
% 08.07.2017

% define paths
projectDir = '/Volumes/psych-cog/dsnlab/'
johnDir = '/Volumes/psych-cog/dsnlab/Archived/sfiz/subjects/'
daniDir = '/Volumes/psych-cog/dsnlab/SFIC_Self3/archive/raw_nii/'
nandiDir = '/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/subjects/'
jobDir = '/Volumes/psych-cog/dsnlab/SFIC/scripts/fMRI/ppc/spm/QC_alignment_DaniJohn/';

addpath(projectDir)

idDir = '/Volumes/psych-cog/dsnlab/SFIC/scripts/org'
cd(idDir)
[oldID] = csvread('SFIC_to_sfiz_IDs.csv',1,0);

% loop through subjects and replace subject ID, wave, reo parameters

for subCount = 1:96;
    
	if subCount < 10
		subID = ['sub-L00',num2str(subCount)];
        dID = ['s00',num2str(subCount)];
        jID = oldID(oldID(:,2)==subCount, 1);
	else
		subID = ['sub-L0',num2str(subCount)];
        dID = ['s0',num2str(subCount)];
        jID = oldID(oldID(:,2)==subCount, 1);
    end
    
    if jID < 10
        jID = ['z0',num2str(jID)];
    else
        jID = ['z',num2str(jID)];
    end

    fn = [johnDir,jID];
    fn2 = [daniDir,dID];
    fn3 = [nandiDir,subID];
    
    if exist(fn, 'dir') 
    
        for tCount = 1:2
            
            if exist([fn3,'/ses-wave',(num2str(tCount))],'dir') && exist([fn2,'/t',(num2str(tCount)),'_hires.nii'],'file')
                
                %gunzip([johnDir,jID,'/anat/b_cop',(num2str(tCount)),'.nii.gz']) 
            
                matlabbatch{1}.cfg_basicio.file_dir.dir_ops.cfg_cd.dir = {'/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/ppc_QC/alignment_DaniJohn'};
                matlabbatch{2}.spm.util.checkreg.data = {
                                                         ['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/subjects/',subID,'/ses-wave',(num2str(tCount)),'/structurals/hires.nii,1']
                                                         ['/Volumes/psych-cog/dsnlab/SFIC_Self3/archive/raw_nii/',dID,'/t',(num2str(tCount)),'_hires.nii,1']
                                                         ['/Volumes/psych-cog/dsnlab/Archived/sfiz/subjects/',jID,'/anat/b_cop',(num2str(tCount)),'.nii,1']
                                                         };
                matlabbatch{3}.spm.util.print.fname = [subID,'_t',(num2str(tCount)),'_alignDaniJohn'];
                matlabbatch{3}.spm.util.print.fig.figname = 'Graphics';
                matlabbatch{3}.spm.util.print.opts = 'pdf';

                saveJob = [jobDir,[subID,'_t',num2str(tCount),'_qc.mat']];
                save(saveJob,'matlabbatch');
                clear matlabbatch; 
            
            elseif exist([fn3,'/ses-wave',(num2str(tCount))],'dir') && ~exist([fn2,'/t',(num2str(tCount)),'_hires.nii'],'file')
            
                %gunzip([johnDir,jID,'/anat/b_cop',(num2str(tCount)),'.nii.gz']) 
            
                matlabbatch{1}.cfg_basicio.file_dir.dir_ops.cfg_cd.dir = {'/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/ppc_QC/alignment_DaniJohn'};
                matlabbatch{2}.spm.util.checkreg.data = {
                                                         ['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/subjects/',subID,'/ses-wave',(num2str(tCount)),'/structurals/hires.nii,1']
                                                         ['/Volumes/psych-cog/dsnlab/Archived/sfiz/subjects/',jID,'/anat/b_cop',(num2str(tCount)),'.nii,1']
                                                         };
                matlabbatch{3}.spm.util.print.fname = [subID,'_t',(num2str(tCount)),'_alignJohn'];
                matlabbatch{3}.spm.util.print.fig.figname = 'Graphics';
                matlabbatch{3}.spm.util.print.opts = 'pdf';

                saveJob = [jobDir,[subID,'_t',num2str(tCount),'_qc.mat']];
                save(saveJob,'matlabbatch');
                clear matlabbatch; 
                
            end
            
        end
        
        for tCount = 3
        
            if exist([fn3,'/ses-wave',(num2str(tCount))],'dir') && exist([fn2,'/t',(num2str(tCount)),'_hires.nii'],'file')
                
            matlabbatch{1}.cfg_basicio.file_dir.dir_ops.cfg_cd.dir = {'/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/ppc_QC/alignment_DaniJohn'};
            matlabbatch{2}.spm.util.checkreg.data = {
                                                         ['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/subjects/',subID,'/ses-wave',(num2str(tCount)),'/structurals/hires.nii,1']
                                                         ['/Volumes/psych-cog/dsnlab/SFIC_Self3/archive/raw_nii/',dID,'/t',(num2str(tCount)),'_hires.nii,1']
                                                         };
            matlabbatch{3}.spm.util.print.fname = [subID,'_t',(num2str(tCount)),'_alignDani'];
            matlabbatch{3}.spm.util.print.fig.figname = 'Graphics';
            matlabbatch{3}.spm.util.print.opts = 'pdf';

            saveJob = [jobDir,[subID,'_t',num2str(tCount),'_qc.mat']];
            save(saveJob,'matlabbatch');
            clear matlabbatch; 
            
            end
            
        end
        
    else
    
        for tCount = 1:3
            
            if exist([fn3,'/ses-wave',(num2str(tCount))],'dir') && exist([fn2,'/t',(num2str(tCount)),'_hires.nii'],'file')
            
            matlabbatch{1}.cfg_basicio.file_dir.dir_ops.cfg_cd.dir = {'/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/ppc_QC/alignment_DaniJohn'};
            matlabbatch{2}.spm.util.checkreg.data = {
                                                     ['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/subjects/',subID,'/ses-wave',(num2str(tCount)),'/structurals/hires.nii,1']
                                                     ['/Volumes/psych-cog/dsnlab/SFIC_Self3/archive/raw_nii/',dID,'/t',(num2str(tCount)),'_hires.nii,1']
                                                     };
            matlabbatch{3}.spm.util.print.fname = [subID,'_t',(num2str(tCount)),'_alignDani'];
            matlabbatch{3}.spm.util.print.fig.figname = 'Graphics';
            matlabbatch{3}.spm.util.print.opts = 'pdf';

            saveJob = [jobDir,[subID,'_t',num2str(tCount),'_qc.mat']];
            save(saveJob,'matlabbatch');
            clear matlabbatch; 
            
            end
            
        end
        
    end
    
end