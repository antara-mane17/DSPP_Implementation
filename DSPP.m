%implementation

soundsc(audioread('hello.wav'),8000)
        soundsc(h,8000)


disp('Enter test signal');
dur=input('Recording time?');
disp('Get ready');
pause(1);
disp('Start speaking.');
recObj = audiorecorder;
recordblocking(recObj, dur);
disp('End of Recording.');
testrecord = getaudiodata(recObj);
fs=8000;
save testrecord;
load testrecord.mat
% Write audio in a file 
pr1 = 'test.wav';
audiowrite(pr1,testrecord,fs);
clear testrecord fs
disp('Test File Recorded');


soundsc(audioread('test.wav'),8000)
        soundsc(h,8000)



disp('Enter input signal');
disp('Get ready');
pause(1);
disp('Start speaking.');
recObj = audiorecorder;
recordblocking(recObj, dur);
disp('End of Recording.');
inputrecord = getaudiodata(recObj);
fs=8000;
save inputrecord;
load inputrecord.mat
% Write audio in a file 
pr2 = 'myDataFile.wav';
audiowrite(pr2,inputrecord,fs);
clear inputrecord fs
disp('Audio File Recorded');


soundsc(audioread('myDataFile.wav'),8000)
        soundsc(h,8000)

        
        
x=audioread('hello.wav');
x=x';
x=x(1,:);
x=x';
y1=audioread('hello.wav');
y1=y1';
y1=y1(1,:);
y1=y1';
z1=xcorr(x,y1);
m1=max(z1);
l1=length(z1);
t1=-((l1-1)/2):1:((l1-1)/2);
t1=t1';
%subplot(3,2,1);
%plot(t1,z1);
disp(m1);
if m1<=300
    disp('Its a Match');
else 
    disp('Its not a Match');
end