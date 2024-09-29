% genarate terrain data 
% the shape of dividing line is cos function

prec='real*8';
ieee='b';

nx = 4000;
ny = 1;
nz = 130;
dz = -5;

z_bottom = nz * dz + 100;

A1 = -z_bottom / 2 * 0.9;
T1 = 64 * 3;
w1 = 2 * pi / T1;
xc1 = nx / 2 - 64 * 3 * 0.8;

A2 = -z_bottom / 2 * 0.6;
T2 = 64 * 3;
w2 = 2 * pi / T2;
xc2 = nx / 2 + 64 * 3 * 1.7;

bathy_grid = 0.0 * rand([nx,ny]);
for i=1: nx
    bathy_grid(i, :) = z_bottom;  
    if (i > xc1 - T1 / 2) &&  (i <= xc1 + T1 / 2)
        bathy_grid(i, :) =  A1 * cos(w1 * (i - xc1)) + z_bottom +  A1;
    end
    if (i > xc2 - T2 / 2) &&  (i <= xc2 + T2 / 2)
        bathy_grid(i, :) =  A2 * cos(w2 * (i - xc2)) + z_bottom +  A2;
    end
end

% plot(bathy_grid)
% plot(bathy_grid(2000-512:2000+512,:))

fid = fopen('bathy/cos/topo_cos1.binary', 'w', ieee); fwrite(fid, bathy_grid, prec); fclose(fid);
% the name of file may be topo_simp1.binary



z_bottom = nz * dz + 100;

A1 = -z_bottom / 2 * 0.9;
T1 = 64 * 4;
w1 = 2 * pi / T1;
xc1 = nx / 2 - 64 * 3 * 0.8;

A2 = -z_bottom / 2 * 0.7;
T2 = 64 * 2;
w2 = 2 * pi / T2;
xc2 = nx / 2 + 64 * 3 * 1.7;

bathy_grid = 0.0 * rand([nx,ny]);
for i=1: nx
    bathy_grid(i, :) = z_bottom;  
    if (i > xc1 - T1 / 2) &&  (i <= xc1 + T1 / 2)
        bathy_grid(i, :) =  A1 * cos(w1 * (i - xc1)) + z_bottom +  A1;
    end
    if (i > xc2 - T2 / 2) &&  (i <= xc2 + T2 / 2)
        bathy_grid(i, :) =  A2 * cos(w2 * (i - xc2)) + z_bottom +  A2;
    end
end

% plot(bathy_grid)
plot(bathy_grid(2000-512:2000+512,:))

fid = fopen('bathy/cos/topo_cos2.binary', 'w', ieee); fwrite(fid, bathy_grid, prec); fclose(fid);


z_bottom = nz * dz + 100;

A1 = -z_bottom / 2 * 0.8;
T1 = 64 * 2.5;
w1 = 2 * pi / T1;
xc1 = nx / 2 - 64 * 3 * 0.8;

A2 = -z_bottom / 2 * 0.6;
T2 = 64 * 4;
w2 = 2 * pi / T2;
xc2 = nx / 2 + 64 * 3 * 1.7;

bathy_grid = 0.0 * rand([nx,ny]);
for i=1: nx
    bathy_grid(i, :) = z_bottom;  
    if (i > xc1 - T1 / 2) &&  (i <= xc1 + T1 / 2)
        bathy_grid(i, :) =  A1 * cos(w1 * (i - xc1)) + z_bottom +  A1;
    end
    if (i > xc2 - T2 / 2) &&  (i <= xc2 + T2 / 2)
        bathy_grid(i, :) =  A2 * cos(w2 * (i - xc2)) + z_bottom +  A2;
    end
end

% plot(bathy_grid)
% plot(bathy_grid(2000-512:2000+512,:))

fid = fopen('bathy/cos/topo_cos3.binary', 'w', ieee); fwrite(fid, bathy_grid, prec); fclose(fid);


z_bottom = nz * dz + 100;

A1 = -z_bottom / 2 * 0.8;
T1 = 64 * 3;
w1 = 2 * pi / T1;
xc1 = nx / 2 - 64 * 3 * 0.6;

A2 = -z_bottom / 2 * 0.6;
T2 = 64 * 4;
w2 = 2 * pi / T2;
xc2 = nx / 2 + 64 * 3 * 1.4;

bathy_grid = 0.0 * rand([nx,ny]);
for i=1: nx
    bathy_grid(i, :) = z_bottom;  
    if (i > xc1 - T1 / 2) &&  (i <= xc1 + T1 / 2)
        bathy_grid(i, :) =  A1 * cos(w1 * (i - xc1)) + z_bottom +  A1;
    end
    if (i > xc2 - T2 / 2) &&  (i <= xc2 + T2 / 2)
        bathy_grid(i, :) =  A2 * cos(w2 * (i - xc2)) + z_bottom +  A2;
    end
end


% plot(bathy_grid)
% plot(bathy_grid(2000-512:2000+512,:))

fid = fopen('bathy/cos/topo_cos4.binary', 'w', ieee); fwrite(fid, bathy_grid, prec); fclose(fid);
