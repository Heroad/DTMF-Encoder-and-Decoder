clear all; clc;
%%
%初始化参数设置
tm=['1', '2', '3', 'A'; 
       '4', '5', '6', 'B'; 
       '7', '8', '9', 'C'; 
       '*', '0', '#', 'D'];                      % DTMF 4Ｘ４矩阵
lowFreArray=[697, 770, 852, 941]; % 行频率
highFreArray=[1209, 1336, 1477, 1633]; % 列频率
allFreArray = [lowFreArray, highFreArray];                   %所有频率
Fs = 8000;           %采样频率
t = (0:Fs-1)/Fs;
N = Fs;

%%
%dtmfEncoder();
myrecord();
filter_Decoder();
%goertzel_decoder();