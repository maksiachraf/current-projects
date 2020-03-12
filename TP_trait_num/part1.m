close all; clc;
%frequence analogique et discrete :
sinusoides=data;
nfft= 1024;
N=500;
axe_freq=-fs/2:fs/nfft:fs/2-(fs/nfft);
axe_freqr=-1/2:1/nfft:1/2-(1/nfft);
sinu_fft=fftshift(abs(fft(sinusoides(1:N),nfft)));
figure;
plot(axe_freq,sinu_fft);
figure;
plot(axe_freqr,sinu_fft);


%TFD et fenetrage :
M=256;
N=2048;
fr=8/256;
axe_temps=0:1:M-1;
sinus=sin(2*pi*fr*axe_temps);
figure;
plot(axe_temps,sinus);

axe_freq_fenet=-128:1:127;
figure;
sinu_fft_fenet=fftshift(abs(fft(sinus,M)));
plot(axe_freq_fenet,sinu_fft_fenet);

axe_freq_fenet=-1024:1:1023;
figure;
sinu_fft_fenet=fftshift(abs(fft(sinus,N)));
plot(axe_freq_fenet,sinu_fft_fenet);


Rect = rectwin(16);

%Partie 2
