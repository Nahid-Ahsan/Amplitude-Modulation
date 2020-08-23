clear all; close all; clc;
fs = 8000; % Sampling Frequency
fc = 100; % Carrier Frequency
Ac = 1; % Carrier Amplitude
fm = 10; % Message Frequency
Am = 1; % Message Amplitude
%% Time Domain Analysis
t = 0:1/fs:1; % Time Grid
M = Am*cos(2*pi*fm*t); % Message Signal
C = Ac*cos(2*pi*fc*t); % Carrier Signal
S_AM = M.*C; % DSB-SC Signal
figure(1);
plot(t, M);
xlabel('Time (s)')
ylabel('m(t)')
xlim([0, 5/fm]);
title('Message Signal in Time Domain');
figure(2);
plot(t, C);
xlabel('Time (s)')
ylabel('c(t)')
xlim([0, 5/fm]);
title('Carrier Signal in Time Domain');
figure(3);
plot(t, S_AM);
xlabel('Time (s)')
ylabel('S_{AM}(t)')
xlim([0, 5/fm]);
title('DSB-SC Signal in Time Domain');


%% Frequency Domain Analysis
% We will use here a special function called 'fft' means Fast Fourier
% Transform. For more help, type 'doc fft' in the command window.
% Also know about the function 'fftshift' in the same manner.

M_f = fftshift(abs(fft(M)));
f = linspace(-fs/2, fs/2, length(M_f));
figure(4)
stem(f, M_f/max(M_f));
xlabel('Frequency (Hz)');
ylabel('Normalized M(f)');
xlim([-120, 120])
title('Spectrum of Message Signal');
C_f = fftshift(abs(fft(C)));
figure(5)
stem(f, C_f/max(C_f));
xlabel('Frequency (Hz)');
ylabel('Normalized C(f)');
xlim([-120, 120])
title('Spectrum of Carrier Signal');
S_AM_f = fftshift(abs(fft(S_AM)));
figure(6)
stem(f, S_AM_f/max(S_AM_f));
xlabel('Frequency (Hz)');
ylabel('Normalized S_{AM}(f)');
xlim([-120, 120])
title('Spectrum of DSB-SC Signal');