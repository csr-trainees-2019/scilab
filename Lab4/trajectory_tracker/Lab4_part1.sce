Jm = 0.0024;
Km = 0.5;
Kb = 0.48;
R = 5.2;
Kf=0.2;
Kp = 50.1;
//Kd = 0.97; In matlab error and I don't wanna solve it. Test in scilab
Kd = 0;
Ki = 81;
K = Kf + Km*Kb/R;


f=figure();
clf();
f.background =8;
a=gca();
subplot(121)
plot(with.time,with.values(:,1),with.time,with.values(:,2),'r');
a.children
poly1=a.children.children(2); 
poly1.thickness=3;
poly1=a.children.children(1);
poly1.thickness=3;
poly1.line_style=6;
title("Моделирование слежения за синусом","fontsize", 6);
l=legend("$желаемая\ траектория\ (q^*)$","$моделирование\ (q)$");
l.font_size=4;
xlabel("$t,s$", "fontsize", 6);
ylabel("$q,rad$","fontsize", 6);
subplot(122)
plot(with.time,with.values(:,1)-with.values(:,2),'r')
title("Ошибка слежения за синусом","fontsize", 6);
l=legend("$ошибка\ (q^* - q)$");
l.font_size=4;
xlabel("$t,s$", "fontsize", 6);
ylabel("$q,rad$","fontsize", 6);


f=figure();
clf();
f.background =8;
a=gca();
subplot(121)
plot(without.time,without.values(:,1),without.time,without.values(:,2),'r');
title("Моделирование слежения за синусом","fontsize", 6);
l=legend("$желаемая\ траектория\ (q^*)$","$моделирование\ (q)$");
l.font_size=4;
xlabel("$t,s$", "fontsize", 6);
ylabel("$q,rad$","fontsize", 6);
subplot(122)
a.children
poly1=a.children.children(2); 
poly1.thickness=3;
poly1=a.children.children(1);
poly1.thickness=3;
poly1.line_style=6;
plot(without.time,without.values(:,1)-without.values(:,2),'r')
title("Ошибка слежения за синусом","fontsize", 6);
l=legend("$ошибка\ (q^* - q)$");
l.font_size=4;
xlabel("$t,s$", "fontsize", 6);
ylabel("$q,rad$","fontsize", 6);


f=figure();
clf();
f.background =8;
plot(without.time,without.values(:,1)-without.values(:,2),'r',with.time,with.values(:,1)-with.values(:,2),'b')
title("Сравнение ошибок","fontsize", 6);
l=legend("ошибка без траекторного регулятора","ошибка c траекторным регулятором");
l.font_size=3;
xlabel("$t,s$", "fontsize", 6);
ylabel("$q,rad$","fontsize", 6);
