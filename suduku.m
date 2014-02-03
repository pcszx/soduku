%% Projet sudoku
% shen 30/01/2014
%% 
clear all; close all;

I_init=double(imread('suduku.bmp'))/255;
I_seuil=I_init;
I_seuil(I_seuil<0.7)=0;
I_seuil(I_seuil>=0.7)=1;
%I_seuil=1-I_seuil;


str=strel('disk', 5);
I_open=imopen(I_seuil, str);

figure, imshow(I_open, []),title('Sudoku');