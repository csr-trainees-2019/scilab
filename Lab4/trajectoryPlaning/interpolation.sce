tf=5;
ts=0;
qs=[0;0;0];
qf=[1;1.5;2];

t=(ts:0.05:tf)';

dqs=[1;0;0];
dqf=[-1;0;0];

N=3
M=[[ts^3, ts^2, ts, 1];
   [tf^3, tf^2, tf, 1];
   [3*ts^2, 2*ts, 1, 0];
   [3*tf^2, 2*tf, 1, 0]];
   
time=[t.^3, t.^2, t, zeros(size(t,1),1)];
q=[]

for i=1:N
    b=[qs(i); 
       qf(i);
       dqs(i); 
       dqf(i)];
               
    a=M^(-1)*b;
    q(i,:)=time*a
end
a=figure()
a.background=8
subplot(3,1,1);
plot2d(t,q(1,:)', 1);

xlabel('t, c')
ylabel('q_1, рад')

subplot(3,1,2);
plot2d(t,q(2,:)', 2);

xlabel('t, c')
ylabel('q_2, рад')

subplot(3,1,3);
plot2d(t,q(3,:)', 3);

xlabel('t, c')
ylabel('q_3, рад')
