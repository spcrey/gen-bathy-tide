prec='real*8';
ieee='b';

% y = A(w(x-x0))+B
fid = fopen('tide/OB_Tide_WEST_u_Amp.binary', 'r', ieee); tide_amp = fread(fid, inf, prec); fclose(fid);
tide_amp(1,1) % 0.1 - 0.4

fid = fopen('tide/OB_Tide_WEST_u_Amp.binary', 'r', ieee); tide_amp = fread(fid, inf, prec); fclose(fid);
tide_amp(1,1) = 0.1;
fid = fopen('tide/OB_Tide_WEST_u_Amp_0_1.binary', 'w', 'b'); fwrite(fid, tide_amp, 'real*8'); fclose(fid);

fid = fopen('tide/OB_Tide_WEST_u_Amp.binary', 'r', ieee); tide_amp = fread(fid, inf, prec); fclose(fid);
tide_amp(1,1) = 0.2;
fid = fopen('tide/OB_Tide_WEST_u_Amp_0_2.binary', 'w', 'b'); fwrite(fid, tide_amp, 'real*8'); fclose(fid);

fid = fopen('tide/OB_Tide_WEST_u_Amp.binary', 'r', ieee); tide_amp = fread(fid, inf, prec); fclose(fid);
tide_amp(1,1) = 0.3;
fid = fopen('tide/OB_Tide_WEST_u_Amp_0_3.binary', 'w', 'b'); fwrite(fid, tide_amp, 'real*8'); fclose(fid);

fid = fopen('tide/OB_Tide_WEST_u_Amp.binary', 'r', ieee); tide_amp = fread(fid, inf, prec); fclose(fid);
tide_amp(1,1) = 0.4;
fid = fopen('tide/OB_Tide_WEST_u_Amp_0_4.binary', 'w', 'b'); fwrite(fid, tide_amp, 'real*8'); fclose(fid);

fid = fopen('tide/OB_Tide_WEST_u_Amp.binary', 'r', ieee); tide_amp = fread(fid, inf, prec); fclose(fid);
tide_amp(1,1) = 0.05;
fid = fopen('tide/OB_Tide_WEST_u_Amp_0_05.binary', 'w', 'b'); fwrite(fid, tide_amp, 'real*8'); fclose(fid);

fid = fopen('tide/OB_Tide_WEST_u_Amp.binary', 'r', ieee); tide_amp = fread(fid, inf, prec); fclose(fid);
tide_amp(1,1) = 0.0;
fid = fopen('tide/OB_Tide_WEST_u_Amp_0_0.binary', 'w', 'b'); fwrite(fid, tide_amp, 'real*8'); fclose(fid);
