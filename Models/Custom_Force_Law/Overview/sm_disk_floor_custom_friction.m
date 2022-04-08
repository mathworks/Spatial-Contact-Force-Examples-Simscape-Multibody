%% Multibody Rolling Disk, Custom Force Law
%
% This example shows how to model a custom force law that integrated with
% the Spatial Contact Force block.  The custom force law modifies the
% coefficients of friction based on the disk's position.
% 
% Two spinning disks are released above a floor with an initial
% translational speed.  The friction between the disks and the floor slows
% the rate at which they spin and slide.  When the disk with the custom force
% law reaches a patch of ice (shown visually in the animation), the
% coefficients of friction are reduced.  The rotational speeds of the disks
% and trajectories of the disks differ, showing the effect of the custom
% force law.
%
% Copyright 2022 The MathWorks, Inc.


%% Model

open_system('sm_disk_floor_custom_friction')

set_param(find_system('sm_disk_floor_custom_friction','FindAll', 'on','type','annotation','Tag','ModelFeatures'),'Interpreter','off')

%% Simulation Results from Simscape Logging
%%
%
% The plot below compares the rotational speed of the disks and their
% position along the global x-axis.  When the disks hit the patch of ice,
% only the disk with the custom force law has its friction force affected.
%

sm_disk_floor_custom_friction_plot1xy;

%%
%clear all
close all
bdclose all
