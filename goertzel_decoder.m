%用goertzel算法识别信号
%%
freq_indices = round(allFreArray/Fs*N) + 1;
dft_data=goertzel(x(1:N),freq_indices);                                                       % 用 Goertzel 算法计算八点 DFT 样本
val = abs(dft_data);                                                                                   % 列出八点 DFT 向量
figure(2);stem(allFreArray,val,'.');set(gca,'xtick',allFreArray);xlabel('k');ylabel('|X(k)|')                           % 画出 8 点 DFT 幅度
%axis([10 50 0 120])
limit = 10;                                                                        %阈值
for r=1:4
    if val(r) > limit break 
    end                                                                                 % 查找行号
end
for s=5:8
    if val(s) > limit break
    end                                                                                  % 查找列号
end
final= tm(r,s-4);                                                                     %由行和列查的数字
disp('接收端检测到的号码为: ');                                               % 显示接收到的字符
disp(final);

