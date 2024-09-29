function [bathy_grid, clip_bathy_grid] = get_bathy_grid_overlap(a1_mul, t1_mul, xc1_mul, a2_mul, t2_mul, xc2_mul)
%     prec='real*8';
%     ieee='b';

    nx = 4000;
    nz = 130;
    dz = -4;
    clip_nx = 1024;
    t_alpha = 20;
    
    z_bottom = nz * dz - 20;
    
    A1 = -z_bottom * a1_mul;
    T1 = clip_nx * t1_mul;
    xc1 = nx / 2 - clip_nx * xc1_mul;
    
    A2 = -z_bottom * a2_mul;
    T2 = clip_nx * t2_mul;
    xc2 = nx / 2 + clip_nx * xc2_mul;

    mid = nx/2 - clip_nx/2 + clip_nx * 0.55;
    
    bathy_grid = 0.0 * rand([nx, 1]);
    for i=1: nx
        bathy_grid(i, :) = A1 * exp(-(i - xc1) ^ 2 / (T1 ^ 2 / t_alpha)) + z_bottom;
    end
    for i=1: nx
        value = A2 * exp(-(i - xc2) ^ 2 / (T2 ^ 2 / t_alpha)) + z_bottom;
        if (i > mid - clip_nx/2) && value > bathy_grid(i, :)
            bathy_grid(i, :) = value;
        end
    end

    clip_bathy_grid = bathy_grid(nx / 2 - clip_nx / 2: nx / 2 + clip_nx / 2,:);
end
