% DTMF ˫Ƶ�����źŵ�����
%%
number = input('input the number\n', 's');                          %������룬�˴�Ϊchar����
[i j] = find(tm == number);                                                 %�ҵ�����ĵ��ַ���Ӧ���к���
lowFre = lowFreArray(i);                                                      %���Ƶ��
highFre = highFreArray(j);                                                   %���Ƶ��
x = sin(2*pi*lowFre*t) + sin(2*pi*highFre*t);                        % ����˫Ƶ�ź�
%sound(x,Fs);                                                                      %����
figure(1);subplot(211);plot(x);title('˫Ƶ�ź�x(n)');xlabel('time (milliseconds)');

%%
%FFT
N=Fs;    %���ֲ������� 
Xk = fft(x, N);
freq = Fs/2*linspace(0,1,N/2);
subplot(212);plot(freq,2*abs(Xk(1:N/2)));grid on;title('����ǰƵ��');xlabel('Frequency (Hz)');ylabel('|Xk(f)|');


