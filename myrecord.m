%%
%录音1s
recObj = audiorecorder(Fs,16, 1);
disp('Start speaking.')
recordblocking(recObj, 1);
disp('End of Recording.');
x = getaudiodata(recObj);
%保存为文件
audiowrite('recording.wav',x,Fs); 
% Play back the recording.
play(recObj);
% Plot the waveform.
subplot(211);
plot(x);
% Plot fft
Xk = fft(x, N);
freq = Fs/2*linspace(0,1,N/2);
subplot(211);plot(t,x);
subplot(212);plot(freq,2*abs(Xk(1:N/2)));
