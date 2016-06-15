# DTMF-Encoder-and-Decoder
matlab 2014 for DTMF Encoder and Decoder
这是一个DTMF合成和识别程序。  
    main.m：初始化参数和运行程序。  
    dtmfEncoder：合成dtmf信号及播放。  
    filter_Decoder.m：这是我自己用系统自带的带通滤波器做的识别系统。大致就是8个滤波器，然后设个阈值，判断。  
    goertzel_decoder.m：这是用系统自带的专门的DTMF算法识别的。  
    myrecord.m：这个可以录音1s，进行识别，而且可以保存为wav文件。  
  
这就是说生成信号方法有2种，识别方法有两种。  
  
不足：当现场录音比较嘈杂或者输入声音较小时，会识别不出来。  
解决方案：阈值按比例调节。  
