clc
close all
[ y , fs ] = audioread('S-elec.Wav');
unAmplifiedSignal = zeros(1,2*length(y));
for i = 1 : length(y)
    unAmplifiedSignal(1,2.*i) = y(i);
end

for i = 1 : length(y)
    unAmplifiedSignal(1,2.*i - 1) = i/fs;
end

save('data.txt','unAmplifiedSignal','-ascii');

amplifiedSignal = importdata('output.txt');
out = amplifiedSignal(:,2);
playControl = audioplayer(out,fs);
audiowrite('AmplifiedMusic.wav',out,fs);
