% genarate terrain data 
% the shape of dividing line is normal distribution curve
% the file is exp1, from topo_norm12 to topo_norm17

b = 0.10;

xc = 0.25;
xc_b = b * 2.0; % 0.1
a1 = 0.65;
a2 = 0.50;
a_b = b * 2.0; % 0.1
t1 = 0.30;
t2 = 0.25;
t_b = b * 1.8;

[bathy_grid12, clip_bathy_grid12] = get_bathy_grid(a1, t1, xc, a2, t2, xc);
fid = fopen('bathy/norm/topo_norm12.binary', 'w', 'b'); fwrite(fid, bathy_grid12, 'real*8'); fclose(fid);
clip_bathy_grid12(1, 1) = 0;

[bathy_grid13, clip_bathy_grid13] = get_bathy_grid(a1-a_b/2, t1+t_b/2, xc+xc_b/4, a2-a_b/2, t2+t_b/2, xc+xc_b/4);
fid = fopen('bathy/norm/topo_norm13.binary', 'w', 'b'); fwrite(fid, bathy_grid13, 'real*8'); fclose(fid);
clip_bathy_grid13(1, 1) = 0;

[bathy_grid14, clip_bathy_grid14] = get_bathy_grid(a1+a_b/2, t1-t_b/2 , xc-xc_b/4, a2+a_b/2, t2-t_b/2, xc-xc_b/4);
fid = fopen('bathy/norm/topo_norm14.binary', 'w', 'b'); fwrite(fid, bathy_grid14, 'real*8'); fclose(fid);
clip_bathy_grid14(1, 1) = 0;

[bathy_grid15, clip_bathy_grid15] = get_bathy_grid_single(a1, t1, xc_b / 8);
fid = fopen('bathy/norm/topo_norm15.binary', 'w', 'b'); fwrite(fid, bathy_grid15, 'real*8'); fclose(fid);
clip_bathy_grid15(1, 1) = 0;

[bathy_grid16, clip_bathy_grid16] = get_bathy_grid_overlap(a1, t1, xc-xc_b*1.0, a2, t2, xc-xc_b*1.0);
fid = fopen('bathy/norm/topo_norm16.binary', 'w', 'b'); fwrite(fid, bathy_grid16, 'real*8'); fclose(fid);
clip_bathy_grid16(1, 1) = 0;

[bathy_grid17, clip_bathy_grid17] = get_bathy_grid_tri(a2, t2, 0, a1, t1, 0, a2, t2, 0);
fid = fopen('bathy/norm/topo_norm17.binary', 'w', 'b'); fwrite(fid, bathy_grid17, 'real*8'); fclose(fid);
clip_bathy_grid9(17, 1) = 0;


plot(clip_bathy_grid12, 'black');
hold on;
plot(clip_bathy_grid13, 'Color', [1 0.5 0]);
hold on;
plot(clip_bathy_grid14, 'Color', [0 1 0.5]);
hold on;
plot(clip_bathy_grid15, 'r');
hold on;
plot(clip_bathy_grid16, 'Color', [1 0 1]);
hold on;
plot(clip_bathy_grid17, 'Color', [0 0.5 1]);
hold on;



hold off;

legend('bathyfile12', 'bathyfile13', 'bathyfile14', 'bathyfile15', 'bathyfile16', 'bathyfile17');