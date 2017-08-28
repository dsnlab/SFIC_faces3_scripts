%-----------------------------------------------------------------------
% Job saved on 28-Aug-2017 15:46:57 by cfg_util (rev $Rev: 6460 $)
% spm SPM - SPM12 (6906)
%-----------------------------------------------------------------------
matlabbatch{1}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.parent = {'/projects/dsnlab/SFIC_Faces3/fMRI/analysis/fx/models/all_emotions'};
matlabbatch{1}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.name = 'sub-L001';
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/SFIC_Faces3/fMRI/subjects/sub-L001/ses-wave1/facesOB'};
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^s6wob_facesOB';
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{3}.spm.stats.fmri_spec.dir(1) = cfg_dep('Make Directory: Make Directory ''sub-L001''', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dir'));
matlabbatch{3}.spm.stats.fmri_spec.timing.units = 'scans';
matlabbatch{3}.spm.stats.fmri_spec.timing.RT = 3;
matlabbatch{3}.spm.stats.fmri_spec.timing.fmri_t = 16;
matlabbatch{3}.spm.stats.fmri_spec.timing.fmri_t0 = 1;
matlabbatch{3}.spm.stats.fmri_spec.sess.scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^s6wob_facesOB)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{3}.spm.stats.fmri_spec.sess.cond = struct('name', {}, 'onset', {}, 'duration', {}, 'tmod', {}, 'pmod', {}, 'orth', {});
matlabbatch{3}.spm.stats.fmri_spec.sess.multi = {'/projects/dsnlab/SFIC_Faces3/fMRI/analysis/fx/multiconds/sub-L001.mat'};
matlabbatch{3}.spm.stats.fmri_spec.sess.regress = struct('name', {}, 'val', {});
matlabbatch{3}.spm.stats.fmri_spec.sess.multi_reg = {'/projects/dsnlab/SFIC_Faces3/fMRI/analysis/fx/motion/auto-motion-output/rp_auto_txt/rp_001_ses-wave1.txt'};
matlabbatch{3}.spm.stats.fmri_spec.sess.hpf = 115;
matlabbatch{3}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{3}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
matlabbatch{3}.spm.stats.fmri_spec.volt = 1;
matlabbatch{3}.spm.stats.fmri_spec.global = 'None';
matlabbatch{3}.spm.stats.fmri_spec.mthresh = -Inf;
matlabbatch{3}.spm.stats.fmri_spec.mask = {'/projects/dsnlab/SFIC_Faces3/fMRI/analysis/templates/masks/groupAverage_opt.nii'};
matlabbatch{3}.spm.stats.fmri_spec.cvi = 'none';
matlabbatch{4}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{4}.spm.stats.fmri_est.write_residuals = 1;
matlabbatch{4}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{5}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{5}.spm.stats.con.consess{1}.tcon.name = 't1_A';
matlabbatch{5}.spm.stats.con.consess{1}.tcon.weights = [1 0 0 0 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{2}.tcon.name = 't1_F';
matlabbatch{5}.spm.stats.con.consess{2}.tcon.weights = [0 1 0 0 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{2}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{3}.tcon.name = 't1_S';
matlabbatch{5}.spm.stats.con.consess{3}.tcon.weights = [0 0 1 0 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{3}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{4}.tcon.name = 't1_H';
matlabbatch{5}.spm.stats.con.consess{4}.tcon.weights = [0 0 0 1 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{4}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{5}.tcon.name = 't1_N';
matlabbatch{5}.spm.stats.con.consess{5}.tcon.weights = [0 0 0 0 1 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{5}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.delete = 0;
