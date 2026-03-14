time = 0:23;
eff = [0.5 0.7 0.9];

pollutant = zeros(3,24);

for i=1:3
    for j=1:24
        pollutant(i,j) = 100*(1-eff(i))^j;
    end
end

surf(time,eff,pollutant)

xlabel("Time")
ylabel("Filter Efficiency")
zlabel("Pollutant Level")
