%��goertzel�㷨ʶ���ź�
%%
freq_indices = round(allFreArray/Fs*N) + 1;
dft_data=goertzel(x(1:N),freq_indices);                                                       % �� Goertzel �㷨����˵� DFT ����
val = abs(dft_data);                                                                                   % �г��˵� DFT ����
figure(2);stem(allFreArray,val,'.');set(gca,'xtick',allFreArray);xlabel('k');ylabel('|X(k)|')                           % ���� 8 �� DFT ����
%axis([10 50 0 120])
limit = 10;                                                                        %��ֵ
for r=1:4
    if val(r) > limit break 
    end                                                                                 % �����к�
end
for s=5:8
    if val(s) > limit break
    end                                                                                  % �����к�
end
final= tm(r,s-4);                                                                     %���к��в������
disp('���ն˼�⵽�ĺ���Ϊ: ');                                               % ��ʾ���յ����ַ�
disp(final);

