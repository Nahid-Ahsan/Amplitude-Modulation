clc
clear all
close all

% Message, m = 0.3 cos(10?t)
% Carrier, C = Triangular wave of 50Hz and amplitude 1
% 1.	DSB and DSB-SC signal plot for both time and frequency domain.
% 2.	Do the above for square wave carrier.

fs = 400;
fm = 5;
fc = 50;
Am = 0.3;
Ac = 1;
t = 0:1/fs:1;
 
m = 0.3*cos(10*pi*t);
t_c = sawtooth(2*pi*fc*t, 0.5);
 
%DSB signal
 
dsb = (Ac + m).*cos(2*pi*fc*t);
figure(1)
plot(t,dsb)
xlabel('time')
ylabel('amplitude')

title('DSB signal')
 
%DSB signal in frequency domain
 
dsb_f = fftshift(abs(fft(dsb,100)));
figure(2)
plot(dsb_f)
xlabel('frquency')
ylabel('amplitude')
 
%DSB_SC signal  with triangle carrier 
 
dsb_sc = m.*t_c;
figure(3)
plot(t,dsb_sc)
xlabel('time')
ylabel('amplitude')
title('DSB_SC')
 
%DSB_SC in frequency domain
 
dsb_scf = fftshift(abs(fft(dsb_sc,100)));
figure(4)
plot(dsb_scf)
xlabel('frequency')
ylabel('amplitude')
title('DSC_SC in freq. domain')
 
%dsb_sc with square wave
 
sq = square(2*pi*fc*t);
dsb_sc_sq = m.*sq;
figure(5)
plot(t,dsb_sc_sq)
xlabel('time')
ylabel('frequency')
title('dsb_sc_sq')
 
%DSB_SC with square wave frequency domain
 
dsb_sc_f = fftshift(abs(fft(dsb_sc_sq,100)));
figure(6)
plot(dsb_sc_f)
xlabel('frequency')
ylabel('amplitude')
title('dsb_sc in frequency domain')


