function [ I ] = samesize(I_1, I_2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

I = imresize(I_2,[size(I_1,1) size(I_1,2)],'bicubic'); % or 'linear', etc.
end

