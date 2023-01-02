clc;
close all;
srcFiles = dir('ReorganizedImages\vasc\*.jpg');  % the folder in which the images exists
for i = 1 : length(srcFiles)    %repeat for every classification
filename = strcat('ReorganizedImages\vasc\',srcFiles(i).name);  
im = imread(filename);
k=imresize(im,[224,224]);
newfilename=strcat('ReorganizedImages\vasc\',srcFiles(i).name);
imwrite(k,newfilename,'jpg');
end
srcFiles = dir('ReorganizedImages\nv\*.jpg');  
for i = 1 : length(srcFiles)
filename = strcat('ReorganizedImages\nv\',srcFiles(i).name);
im = imread(filename);
k=imresize(im,[224,224]);
newfilename=strcat('ReorganizedImages\nv\',srcFiles(i).name);
imwrite(k,newfilename,'jpg');
end
srcFiles = dir('ReorganizedImages\mel\*.jpg');  
for i = 1 : length(srcFiles)
filename = strcat('ReorganizedImages\mel\',srcFiles(i).name);
im = imread(filename);
k=imresize(im,[224,224]);
newfilename=strcat('ReorganizedImages\mel\',srcFiles(i).name);
imwrite(k,newfilename,'jpg');
end
srcFiles = dir('ReorganizedImages\df\*.jpg');  
for i = 1 : length(srcFiles)
filename = strcat('ReorganizedImages\df\',srcFiles(i).name);
im = imread(filename);
k=imresize(im,[224,224]);
newfilename=strcat('ReorganizedImages\df\',srcFiles(i).name);
imwrite(k,newfilename,'jpg');
end
srcFiles = dir('ReorganizedImages\bkl\*.jpg');  
for i = 1 : length(srcFiles)
filename = strcat('ReorganizedImages\bkl\',srcFiles(i).name);
im = imread(filename);
k=imresize(im,[224,224]);
newfilename=strcat('ReorganizedImages\bkl\',srcFiles(i).name);
imwrite(k,newfilename,'jpg');
end
srcFiles = dir('ReorganizedImages\bcc\*.jpg');  
for i = 1 : length(srcFiles)
filename = strcat('ReorganizedImages\bcc\',srcFiles(i).name);
im = imread(filename);
k=imresize(im,[224,224]);
newfilename=strcat('ReorganizedImages\bcc\',srcFiles(i).name);
imwrite(k,newfilename,'jpg');
end
srcFiles = dir('ReorganizedImages\akiec\*.jpg');  
for i = 1 : length(srcFiles)
filename = strcat('ReorganizedImages\akiec\',srcFiles(i).name);
im = imread(filename);
k=imresize(im,[224,224]);
newfilename=strcat('ReorganizedImages\akiec\',srcFiles(i).name);
imwrite(k,newfilename,'jpg');
end
srcFiles = dir('ISIC2018_Task3_Test_Images\ISIC2018_Task3_Test_Images\*.jpg');
for i = 1 : length(srcFiles)
filename = strcat('ISIC2018_Task3_Test_Images\ISIC2018_Task3_Test_Images\',srcFiles(i).name);
im = imread(filename);
k=imresize(im,[224,224]);
newfilename=strcat('ISIC2018_Task3_Test_Images\ISIC2018_Task3_Test_Images\',srcFiles(i).name);
imwrite(k,newfilename,'jpg');
end
