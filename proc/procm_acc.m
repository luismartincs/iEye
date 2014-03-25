function procm_acc()
%PROCM Summary of this function goes here
%   Detailed explanation goes here

% Specify run #
% BE SURE TO UPDATE THIS OR YOU WILL OVERWRITE DATA
r = 1;

% Let's ask just to make sure you aren't writing over data
rr = sprintf('Do you really want to score run # %s', num2str(r));
choice = questdlg(rr, ...
    'WARNING', ...
    'Yes','No','No');
switch choice
    case 'Yes'     
        
        % Get config
        ii_cfg = evalin('base','ii_cfg');
        velocity = ii_cfg.velocity;
        
        % Create trial compliance matrix
        ii_stats(r).trial_compliance = ones(30,3);
        
        % Set up ii_stats file
        % This will be a 1xn (n = # of runs) structure
        
        % Primary saccade x,y,z values. (1x30 matrix)
        ii_stats(r).primary_x = [];
        ii_stats(r).primary_y = [];
        ii_stats(r).primary_z = [];
        
        ii_stats(r).primary_err_x = [];
        ii_stats(r).primary_err_y = [];
        ii_stats(r).primary_err_z = [];
        
        ii_stats(r).primary_gain_x = [];
        ii_stats(r).primary_gain_y = [];
        ii_stats(r).primary_gain_z = [];
        
        % Final saccade x,y,z values. (1x30 matrix)
        ii_stats(r).final_x = [];
        ii_stats(r).final_y = [];
        ii_stats(r).final_z = [];
        
        ii_stats(r).final_err_x = [];
        ii_stats(r).final_err_y = [];
        ii_stats(r).final_err_z = [];
        
        ii_stats(r).final_gain_x = [];
        ii_stats(r).final_gain_y = [];
        ii_stats(r).final_gain_z = [];
        
        % Corrective saccade x,y,z values. (1x30 matrix)
        ii_stats(r).corrective_x = [];
        ii_stats(r).corrective_y = [];
        ii_stats(r).corrective_z = [];
        
        % Store accuracy selections for future reference
        ii_stats(r).acc_cursel = [];
        ii_stats(r).acc_sel = [];
        
        % Make our best guess selections
        
        
        % Open trial companion window
        % Make sure you are in trial mode and you are good to go
        tComp;
    case 'No'
        disp('Cancelled')
end
end
