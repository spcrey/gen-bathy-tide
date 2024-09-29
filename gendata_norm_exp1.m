% genarate terrain data 
% the shape of dividing line is normal distribution curve
% the file is exp1, from topo_norm1 to topo_norm11

b = 0.10;

xc = 0.25;
xc_b = b * 1.0; % 0.1
a1 = 0.5;
a2 = 0.4;
a_b = b * 1.0; % 0.1
t1 = 0.35;
t2 = 0.30;
t_b = b * 1.0;

[bathy_grid1, clip_bathy_grid1] = get_bathy_grid(a1, t1, xc, a2, t2, xc);
fid = fopen('bathy/norm/topo_norm1.binary', 'w', 'b'); fwrite(fid, bathy_grid1, 'real*8'); fclose(fid);
clip_bathy_grid1(1, 1) = 0;

[bathy_grid2, clip_bathy_grid2] = get_bathy_grid(a1+a_b/2, t1+t_b/2 , xc-xc_b/2, a2+a_b/2, t2, xc+xc_b/2);
fid = fopen('bathy/norm/topo_norm2.binary', 'w', 'b'); fwrite(fid, bathy_grid2, 'real*8'); fclose(fid);
clip_bathy_grid2(1, 1) = 0;

[bathy_grid3, clip_bathy_grid3] = get_bathy_grid(a1-a_b/2, t1, xc+xc_b/2, a2-a_b/2, t2-t_b/2, xc-xc_b/2);
fid = fopen('bathy/norm/topo_norm3.binary', 'w', 'b'); fwrite(fid, bathy_grid3, 'real*8'); fclose(fid);
clip_bathy_grid3(1, 1) = 0;

[bathy_grid4, clip_bathy_grid4] = get_bathy_grid(a1+a_b/4, t1+t_b/4, xc+xc_b/4, a2-a_b/4, t2-t_b/4, xc+xc_b/4);
fid = fopen('bathy/norm/topo_norm4.binary', 'w', 'b'); fwrite(fid, bathy_grid4, 'real*8'); fclose(fid);
clip_bathy_grid4(1, 1) = 0;

[bathy_grid5, clip_bathy_grid5] = get_bathy_grid(a1-a_b/4, t1-t_b/4, xc-xc_b/4, a2+a_b/4, t2+t_b/4, xc-xc_b/4);
fid = fopen('bathy/norm/topo_norm5.binary', 'w', 'b'); fwrite(fid, bathy_grid5, 'real*8'); fclose(fid);
clip_bathy_grid5(1, 1) = 0;

[bathy_grid6, clip_bathy_grid6] = get_bathy_grid(a1, t1, xc-xc_b/2, a2, t2, xc-xc_b/2);
fid = fopen('bathy/norm/topo_norm6.binary', 'w', 'b'); fwrite(fid, bathy_grid6, 'real*8'); fclose(fid);
clip_bathy_grid6(1, 1) = 0;

[bathy_grid7, clip_bathy_grid7] = get_bathy_grid(a1+a_b*2, t1-t_b, xc-xc_b/2, a2+a_b*2, t2-t_b, xc-xc_b/2);
fid = fopen('bathy/norm/topo_norm7.binary', 'w', 'b'); fwrite(fid, bathy_grid7, 'real*8'); fclose(fid);
clip_bathy_grid7(1, 1) = 0;

[bathy_grid8, clip_bathy_grid8] = get_bathy_grid(a1-a_b*2, t1+t_b, xc+xc_b/4, a2-a_b*2, t2+t_b, xc+xc_b/4);
fid = fopen('bathy/norm/topo_norm8.binary', 'w', 'b'); fwrite(fid, bathy_grid8, 'real*8'); fclose(fid);
clip_bathy_grid8(1, 1) = 0;

[bathy_grid9, clip_bathy_grid9] = get_bathy_grid_tri(a2+a_b, t2-t_b/4, 0, a1+a_b*2, t1-t_b/4, 0, a2+a_b, t2-t_b/4, 0);
fid = fopen('bathy/norm/topo_norm9.binary', 'w', 'b'); fwrite(fid, bathy_grid9, 'real*8'); fclose(fid);
clip_bathy_grid9(1, 1) = 0;

[bathy_grid10, clip_bathy_grid10] = get_bathy_grid_overlap(a1+a_b/4, t1+t_b*3, xc-xc_b*1.5, a2, t2+t_b*3, xc-xc_b*1.5);
fid = fopen('bathy/norm/topo_norm10.binary', 'w', 'b'); fwrite(fid, bathy_grid10, 'real*8'); fclose(fid);
clip_bathy_grid10(1, 1) = 0;

[bathy_grid11, clip_bathy_grid11] = get_bathy_grid_single(a1+a_b/2, t1+t_b*2, 0);
fid = fopen('bathy/norm/topo_norm11.binary', 'w', 'b'); fwrite(fid, bathy_grid11, 'real*8'); fclose(fid);
clip_bathy_grid11(1, 1) = 0;


plot(clip_bathy_grid1, 'black');
hold on;
plot(clip_bathy_grid2, 'b');
hold on;
plot(clip_bathy_grid3, 'g');
hold on;
plot(clip_bathy_grid4, 'r');
hold on;
plot(clip_bathy_grid5, 'Color', [1 0.5 0]);
hold on;

plot(clip_bathy_grid6, 'Color', [0.5 1 0]);
hold on;
plot(clip_bathy_grid7, 'Color', [0.5 0.5 0.5]);
hold on;
plot(clip_bathy_grid8, 'Color', [0.5 1 1]);
hold on;

plot(clip_bathy_grid9, 'Color', [0.5 0.2 0.5]);
hold on;
plot(clip_bathy_grid10, 'Color', [0.5 0 1]);
hold on;
plot(clip_bathy_grid11, 'Color', [0.0 0.7 0.8]);

hold off;

