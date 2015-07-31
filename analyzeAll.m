function analyzeAll

figure

hold all;

axis([-50 100 -4 4])

title(['Coefficient of Lift vs. Angle of Attack'],'FontSize',24)
xlabel('Angle of Attack (Degrees)', 'FontSize', 24)
ylabel('Coefficient of Lift', 'FontSize', 24)

%plot horizontal line at y = 0
x=[-50,100]; y=[0,0]; plot(x,y,'k-')

cd plate

cycleRe

cd ..

cd naca2412

cycleRe

cd ..

cd eagle

cycleRe

cd ..

legend('zero-line','plate300','naca300','eagle300')

function cycleRe

angles = ones(1,7);

angles(1) = -45;
angles(2) = -20;
angles(3) = 90;
angles(4) = 45;
angles(5) = 20;
angles(6) = 10;
angles(7) = 0;

% cd 3000
% 
% CLs = executedataread;
% 
% plot(angles, CLs, '*', 'MarkerSize', 18);
% 
% cd ..

cd 300

CLs = executedataread;

plot(angles, CLs,'*', 'MarkerSize', 18);

cd ..