%ϵͳ�Դ���Ƶ�8���˲���
%%
judgeExist = 0;         %����ǰƵ�ʴ�����Ϊ1����������Ϊ0
eightFreExist = [];         %8��Ƶ���Ƿ���ھ���
for item = 1:8
    eval(['f_center=',num2str(allFreArray(item)),';']);
    d = fdesign.bandpass('Fst1,Fp1,Fp2,Fst2,Ast1,Ap,Ast2',...
                                      f_center-20,f_center-10,f_center+10,f_center+20,20,1,20,Fs);
    Hd = design(d,'butter');
    y = filter(Hd,x);
    ydft = fft(y);
    subplot(4,2,item);
    plot(freq,abs(ydft(1:N/2)),'r','linewidth',2);axis([0 2000 0 2000]);title(num2str(item));
    if find(abs(ydft) > 10)
        judgeExist = 1;
    end
    eightFreExist = [eightFreExist judgeExist];
    judgeExist = 0;
end

location = find(eightFreExist == 1);
final = tm(location(1), location(2)-4);
disp('���ն˼�⵽�ĺ���Ϊ: ');                                               % ��ʾ���յ����ַ�
disp(final);

