time = 0:1000;
repair_eff = [0.7 0.9 1.0];

lifetime = zeros(3,1001);

for i=1:3
    for j=1:1001
        lifetime(i,j) = j * repair_eff(i);
    end
end

surf(time,repair_eff,lifetime)

xlabel("Time")
ylabel("Repair Efficiency")
zlabel("Component Lifetime")
