function CLs = executedataread

%Model = basename; %third to last dir
%Re = basename; %second to last dir

angles = ones(1,7);

angles(1) = -45;
angles(2) = -20;
angles(3) = 90;
angles(4) = 45;
angles(5) = 20;
angles(6) = 10;
angles(7) = 0;

dirs = cell(1,7);

dirs{1} = 'neg45';
dirs{2} = 'neg20';
dirs{3} = '90';
dirs{4} = '45';
dirs{5} = '20';
dirs{6} = '10';
dirs{7} = '0';

CLs = ones(1,7);
CDs = ones(1,7);

for i = 1:7
   
    cd(dirs{i})
    
    [CL, CD, Re] = dataReadTemplate(dirs{i});
    
    CLs(i) = CL;
    CDs(i) = CD;
    
    cd ../
    
end

% figure
%  
% hold on;
% 
% axis([-50 100 -6 6])
% 
% plot(angles,CLs,'*')
% 
% title(['Coefficient of Lift vs. Angle of Attack'],'FontSize',24)
% xlabel('Angle of Attack (Degrees)', 'FontSize', 24)
% ylabel('Coefficient of Lift', 'FontSize', 24)
% 
% %plot horizontal line at y = 0
% x=[-50,100]; y=[0,0]; plot(x,y,'k-')
% 
% %save plot as png in plots folder
% cd plots
% saveas(gcf, 'coeffsvsaoa', 'png')
% cd ..
% 
% %CL VS CD PER ANGLE OF ATTACK
% 
% figure
% 
% hold on;
% 
% axis([-6 6 -6 6])
% 
% plot(CDs,CLs, 'b*')
% 
% title('Coefficient of Lift vs Coefficient of Drag')
% xlabel('CD')
% ylabel('CL')
% 
% cd plots
% saveas(gcf, 'clvscd','png')
% cd ..