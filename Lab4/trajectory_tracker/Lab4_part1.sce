Jm = 0.0024;
Km = 0.5;
Kb = 0.48;
R = 5.2;
Kf=0.2;
Kp = 15.1;
//Kd = 0.97; In matlab error and I don't wanna solve it. Test in scilab
Kd = 0;
Ki = 81;
K = Kf + Km*Kb/R;
figure();
clf();
plot2d(with.time,with.values(:,1),with.time,with.values(:,2));
title("Моделирование слежения за синусом","fontsize", 4);
legend("желаемая траектория","моделирование");
xlabel("$t,s$", "fontsize", 4);
ylabel("$q,rad$","fontsize", 4);
figure();
clf();
plot(with.time,with.values(:,1)-with.values(:,2),'r')
title("Ошибка слежения за синусом","fontsize", 4);
legend("ошибка");
xlabel("$t,s$", "fontsize", 4);
ylabel("$q,rad$","fontsize", 4);
