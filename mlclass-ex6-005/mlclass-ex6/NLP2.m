%Random 4 by 4 matrix
M = rand(4,4) 

%Write matrix to file system
dlmwrite("filename.txt",M);

%Read it back and store in an other variable
M2 = dlmread("filename.txt");
load('NLP1.m');