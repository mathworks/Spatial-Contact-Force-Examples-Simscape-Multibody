function sm_disk_cyl_on_floor_enable_cyl(selectCyl)

blk_list_solid = {...
    'Bushing Cyl Solid',...
    'Cylinder',...
    'Contact Force Solid'};

blk_list_ptcld = {...
    'Bushing Cyl Point Cloud',...
    'Cylinder Point Cloud',...
    'Point Cloud',...
    'Contact Force Point Cloud'};

blk_list_disks = {...
    'Bushing Cyl Disks',...
    'Cylinder Disks',...
    'Disk F',...
    'Disk B',...
    'Contact Force Disk F',...
    'Contact Force Disk B'};

switch selectCyl
    case 'Solid', commentSet = {'off','on','on'};
    case 'Point Cloud', commentSet = {'on','off','on'};
    case 'Disks', commentSet = {'on','on','off'};
    case 'All', commentSet = {'off','off','off'};
end


% Test solid
for i = 1:length(blk_list_solid)
    set_param([bdroot '/' blk_list_solid{i}],'Commented',commentSet{1});
end
for i = 1:length(blk_list_ptcld)
    set_param([bdroot '/' blk_list_ptcld{i}],'Commented',commentSet{2});
end
for i = 1:length(blk_list_disks)
    set_param([bdroot '/' blk_list_disks{i}],'Commented',commentSet{3});
end

end