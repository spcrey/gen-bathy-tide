function [bathy_grid, clip_bathy_grid] = get_bathy_grid_single(a1_mul, t1_mul, xc1_mul)

    nx = 4000;
    nz = 130;
    dz = -4;
    clip_nx = 1024;
    t_alpha = 20;
    
    z_bottom = nz * dz - 20;
    
    A1 = -z_bottom * a1_mul;
    T1 = clip_nx * t1_mul;
    xc1 = nx / 2 - clip_nx * xc1_mul;

    
    bathy_grid = 0.0 * rand([nx, 1]);
    for i=1: nx
        bathy_grid(i, :) = A1 * exp(-(i - xc1) ^ 2 / (T1 ^ 2 / t_alpha)) + z_bottom;
    end

    clip_bathy_grid = bathy_grid(nx / 2 - clip_nx / 2: nx / 2 + clip_nx / 2,:);
end
