function [adjust_bathy_grid] = kernel_to_curve(bathy_grid, window_size)
    kernel =  ones(1, window_size)' / window_size;
    adjust_bathy_grid = conv(bathy_grid, kernel, 'same');
    adjust_bathy_grid = zero_to_bottom_sides(adjust_bathy_grid);
end

