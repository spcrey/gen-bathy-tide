function [adjust_bathy_grid] = zoom(bathy_grid, alpha)
    adjust_bathy_grid = 0.0 * rand([4000, 1]);
    for i=1: 4000
        adjust_bathy_grid(i, :) = (bathy_grid(i, :)+540)*alpha-540;
    end
end