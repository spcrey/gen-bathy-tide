function [adjust_bathy_grid] = zero_to_bottom(bathy_grid)
    adjust_bathy_grid = 0.0 * rand([4000, 1]);
    for i=1: 4000
        if bathy_grid(i, :) == 0
            adjust_bathy_grid(i, :) = -540;
        else
            adjust_bathy_grid(i, :) = bathy_grid(i, :);
        end
    end
end