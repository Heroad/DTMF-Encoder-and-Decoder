% DTMF 双频拨号信号的生成
%%
number = input('input the number\n', 's');                          %输入号码，此处为char类型
[i j] = find(tm == number);                                                 %找到输入的的字符对应的行和列
lowFre = lowFreArray(i);                                                      %查低频表
highFre = highFreArray(j);                                                   %查高频表
x = sin(2*pi*lowFre*t) + sin(2*pi*highFre*t);                        % 构成双频信号
%sound(x,Fs);                                                                      %播放
figure(1);subplot(211);plot(x);title('双频信号x(n)');xlabel('time (milliseconds)');

%%
%FFT
N=Fs;    %数字采样点数 
Xk = fft(x, N);
freq = Fs/2*linspace(0,1,N/2);
subplot(212);plot(freq,2*abs(Xk(1:N/2)));grid on;title('处理前频谱');xlabel('Frequency (Hz)');ylabel('|Xk(f)|');


