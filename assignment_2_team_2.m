% Assignment 2 for the class Data Science for Human Factors:
% Scripts, style, and variable classes
% 
% Write the code in the sections below and, if necessary, your final answer
% as a comment.

% The filename should be assignment_2_team_<x>

% Team: 2

scores = 0;

%% 1) (2P)
n = 5;
m = 10;
randmat = randn(m,n);

colmin = min(randmat,[],1)
rowmin = min(randmat,[],2)
totalmax = max(randmat(:))

% a) Create code that finds the minimum of each row and of each column 
% of your random matrix using using the sort() function instead of max/min. (0.5P)

%(NB) Colmin:
sort_randmat = sort(randmat);
sort_randmat(1,:) %(NB)minimum of each column
%(NB_Doublecheck) sort_randmat(1,:)-colmin (must be  0 0 0 0 0)

%(NB) Rowmin:
transpose_randmat = transpose(randmat);
sort_transpose_randmat = sort(transpose_randmat);
sort_transpose_randmat(1,:)'
%(NB_Doublecheck) sort_transpose_randmat(1,:)'-rowmin (must be  0 0 0 0 0)

%(NB) Totalmax:
sortormax_randmat = sort(randmat);
maxcol = sortormax_randmat (end,:);
sort_maxcol = sort(maxcol);
sort_maxcol(end)

% b) Find the closest value to zero of the entire matrix. 
% Remember that negative values can be close to zero, too... 
% (1P)
abs_randmat = abs(randmat(:));
[~,index] = min(abs_randmat);
randmat(index)


% c) Put the scripts of b) in one line of code, as in one command, without
% using the ";" or "," separators. (0.5P)
randmat(   randmat==min(abs(randmat(:)))  |  randmat==(-1*min(abs(randmat(:))))   )


%%
scores(1) = 2

%% 2) (1.75P)
% Create a random rowvector of 100 only one-digit whole numbers in the [-9 9] 
% interval, find the amount of positive even numbers in the random matrix 
% using the mod() function. 
%(NB): Null wird nicht mitgezählt da ~> 0

random_rowvector = (randi([-9,9],100,1))';
n = sum((random_rowvector>0) .* (mod(random_rowvector,2)==0))

%%
scores(2) = 1.75

%% 3) (0.75P)
% Find and fix the errors on the following lines of code. 

%(NB) zeromat = ones(10, int8);
%(NB) I assume the author wants to create a 10x10 Matrix filled with Zeros && int8 format


zeromat = zeros(10, 'int8');


%(NB) name = [ 'My name ' 4 ' today is ' "Mudd" ];
%(NB) I assume the name shall be provided, either as variable, or simply just the name
%(NB) anyhow, at least the number 4 should be provided as string.

name = 'Mudd'
my_name = [ 'My name' ' for' ' today is ' name ]
%(NB) or:
name = 'Mudd'

%(NB) asdf = [1:.2:4 3:-2/3:-1]; asdf(.2)
%(NB) I assume second element shall be provided:
asdf = [1:.2:4 3:-2/3:-1];
asdf(2)


%%
scores(3) = 0.75

%%

final_score = sum(scores)

