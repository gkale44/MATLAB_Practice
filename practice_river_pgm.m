%Matlab program for simulation of Water reservior
clc
Cevap=0.1; % Coefficient of evaporation
River_flow=[5000 4500 4000 3000 2500 2000 2000 3000 5000 5500 50005000]; % input from river
V=500; % initial volume of water
Dem=[100, 400, 400, 200, 200, 100, 50 50 50 100 150 200]; % Water from rain
Rain=[0 0 0 0 0 0 50 300 500 0 0 0]; % Initial Demand
t=0; % STart time
DT=1; % Step size - 1-month
Tsim=120; % Simulation time (100 Yrs.)
n=round(Tsim-t)/DT;
Cap=20000;i1=1;
for i=1:n
    x1(i,:)=[t,V, Dem(i1)]; %#ok<SAGROW>
    if i1 ==12
        i1=1;
    end
Demand=Dem(i1)*exp(0.003*t);
Vin= Rain(i1) + River_flow(i1);
Asurface=0.01*V;
Evaporation=Asurface*Cevap;
Seepage = 0.2*V;
Tloss = Seepage + Evaporation;
V = V + Vin -Tloss-Demand;
if Demand >= V
    % disp(‘shortage of water’)
    Vshortage=Demand-V;
else
    % disp(‘Excess of water’)
    Diff1= V-Demand ;
    if Diff1 > Cap
        % disp(‘Spill over’)
        Vspil=Diff1-Cap;
    end
end
i1=i1+1;
t=t+DT;
end
time1=x1(:,1);
figure(1)
plot(time1,x1(:,2),"k-")
xlabel("Time(months)")
ylabel("Water in Rservior")
figure(2)
plot(time1,x1(:,3),"k––")
xlabel("Time(months)")
ylabel("Demand");
axis([0 120 0 400]);