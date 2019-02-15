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
legend_font = 3;
axis_fontsize=4;
title_fontsize = 4;
graph_thickness = 2;
//------------------------------------------------
f=figure();
clf();
f.background =8;
a=gca();
plot(with.time,with.values(:,1),with.time,with.values(:,2),'r');
a.children
poly1=a.children.children(2); 
poly1.thickness=graph_thickness;
poly1=a.children.children(1);
poly1.thickness=graph_thickness;
poly1.line_style=6;
//title("Моделирование слежения за синусом","fontsize", title_fontsize);
l=legend("$желаемая\ траектория\ (q^*)$","$моделирование\ (q)$");
l.font_size=legend_font;
xlabel("$t,s$", "fontsize", axis_fontsize);
ylabel("$q,rad$","fontsize", axis_fontsize);



//------------------------------------------------
f=figure();
clf();
f.background =8;
a=gca();
plot(with.time,with.values(:,1)-with.values(:,2),'r')
//title("Ошибка слежения за синусом","fontsize", title_fontsize);
l=legend("$ошибка\ (q^* - q)$");
l.font_size=legend_font;
xlabel("$t,s$", "fontsize", axis_fontsize);
ylabel("$q,rad$","fontsize", axis_fontsize);
poly1=a.children.children(1);
poly1.thickness=graph_thickness;

//------------------------------------------------
f=figure();
clf();
f.background =8;
a=gca();
plot(without.time,without.values(:,1),without.time,without.values(:,2),'r');
//title("Моделирование слежения за синусом","fontsize", title_fontsize);
l=legend("$желаемая\ траектория\ (q^*)$","$моделирование\ (q)$");
l.font_size=legend_font;
xlabel("$t,s$", "fontsize", axis_fontsize);
ylabel("$q,rad$","fontsize", axis_fontsize);
a.children
poly1=a.children.children(2); 
poly1.thickness=graph_thickness;
poly1=a.children.children(1);
poly1.thickness=graph_thickness;
poly1.line_style=6;

//------------------------------------------------
f=figure();
clf();
f.background =8;
a=gca();

plot(without.time,without.values(:,1)-without.values(:,2),'r')
//title("Ошибка слежения за синусом","fontsize", title_fontsize);
l=legend("$ошибка\ (q^* - q)$");
l.font_size=legend_font;
xlabel("$t,s$", "fontsize", axis_fontsize);
ylabel("$q,rad$","fontsize", axis_fontsize);
poly1=a.children.children(1);
poly1.thickness=graph_thickness;

//------------------------------------------------
f=figure();
clf();
a=gca();
f.background =8;
plot(without.time,without.values(:,1)-without.values(:,2),'b',with.time,with.values(:,1)-with.values(:,2),'r')
//title("Сравнение ошибок","fontsize", title_fontsize);
l=legend("ошибка без траекторного регулятора","ошибка c траекторным регулятором");
l.font_size=legend_font;
xlabel("$t,s$", "fontsize", axis_fontsize);
ylabel("$q,rad$","fontsize", axis_fontsize);
poly1=a.children.children(2); 
poly1.thickness=graph_thickness;
poly1=a.children.children(1);
poly1.thickness=graph_thickness;
