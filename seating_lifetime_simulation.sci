time = 0:1000;

lifetime = 500;
replacement_stage = zeros(1,1001);

for i = 1:1001
    if modulo(time(i),500)==0 & i>1 then
        lifetime = lifetime * 0.9;
    end
    replacement_stage(i) = lifetime;
end

plot3d(time, ones(time), replacement_stage)

xlabel("Time")
ylabel("Replacement Stage")
zlabel("Seat Lifetime")
