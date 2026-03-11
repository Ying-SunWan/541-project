load("251210_MN32-4_test_toroidal_uf16_uFORCES-16-Tx-Column_beamformed_f00.mat");
vid = image{1};

x = squeeze(vid(:,1,:,20:40));
[l, w, t] = size(x);

% Initial Conditions
d0 = 0.01;
w0 = ones(l*w,1);

% For colormapping the overlay
cmap = autumn(256);
R_table = cmap(:,1)';
G_table = cmap(:,2)';
B_table = cmap(:,3)';

sim('PASTd');