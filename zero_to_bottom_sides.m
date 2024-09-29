
function [adjust_bathy_grid] = zero_to_bottom_sides(bathy_grid)
    adjust_bathy_grid = bathy_grid;
    for i=1: 4000
        if i < 1000
            adjust_bathy_grid(i, :) = -540;
        end
        if i > 3000
            adjust_bathy_grid(i, :) = -540;
        end
    end
end