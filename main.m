clear all; clc;
%%
%��ʼ����������
tm=['1', '2', '3', 'A'; 
       '4', '5', '6', 'B'; 
       '7', '8', '9', 'C'; 
       '*', '0', '#', 'D'];                      % DTMF 4�أ�����
lowFreArray=[697, 770, 852, 941]; % ��Ƶ��
highFreArray=[1209, 1336, 1477, 1633]; % ��Ƶ��
allFreArray = [lowFreArray, highFreArray];                   %����Ƶ��
Fs = 8000;           %����Ƶ��
t = (0:Fs-1)/Fs;
N = Fs;

%%
dtmfEncoder();
%myrecord();
tic
filter_Decoder();
toc
% tic
% goertzel_decoder();
% toc