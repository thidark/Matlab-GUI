function Hd = highpassfilter
%HIGHPASSFILTER Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.4 and Signal Processing Toolbox 8.0.
% Generated on: 01-Aug-2020 11:14:04

% Equiripple Highpass filter designed using the FIRPM function.

% All frequency values are in Hz.
Fs = 1000;  % Sampling Frequency

Fstop = 200;             % Stopband Frequency
Fpass = 210;             % Passband Frequency
Dstop = 0.0001;          % Stopband Attenuation
Dpass = 0.057501127785;  % Passband Ripple
dens  = 20;              % Density Factor

% Calculate the order from the parameters using FIRPMORD.
[N, Fo, Ao, W] = firpmord([Fstop, Fpass]/(Fs/2), [0 1], [Dstop, Dpass]);

% Calculate the coefficients using the FIRPM function.
b  = firpm(N, Fo, Ao, W, {dens});
Hd = dfilt.dffir(b);

% [EOF]
