% Conversi�n de formato TIF a formato PGM las im�genes COVER
clc
clear all
close all

entrada = 'C:\Users\Desktop\ALASKA2\in\';
salida  = 'C:\Users\Desktop\ALASKA2\out\';

tStart = tic;
lee_archivos = dir(strcat(entrada,'*.tif'));
fprintf('Working...')
for k = 1:length(lee_archivos) %recorre n�mero de archivos guardados en el directorio
    archivo = lee_archivos(k).name; %Obtiene el nombre de los archivos
    nombre = archivo(1:5); %Nombre sin el .tif
    Img = double(imread(strcat(entrada,archivo)));
    imwrite( uint8(Img) ,[salida,nombre,'.pgm']);
end
tEnd = toc(tStart);
fprintf('\nThe images are in PGM format, time: %f (sec)\n',tEnd);
