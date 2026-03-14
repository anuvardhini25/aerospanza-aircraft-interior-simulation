time = 0:23;

lighting_power = 50;
ac_power = 200;
efficiency = 0.8;

lighting = zeros(1,24);
ac = zeros(1,24);

for i = 1:24
    if (i<=6 | (i>=13 & i<=18))
        lighting(i) = lighting_power * efficiency;
        ac(i) = ac_power * efficiency;
    else
        lighting(i) = 0;
        ac(i) = ac_power * efficiency;
    end
end

combined = lighting + ac;

Z = [lighting; ac; combined];

surf(time,1:3,Z)
xlabel("Time")
ylabel("Energy Type")
zlabel("Energy Consumption")
