% Assignment 3 for the class Data Science for Human Factors:
% Control statements and loops
% 
% Team: Team_2

scores = 0;

%% 1) (0.75P)

% a) This code is awful in many ways. Count the problems and fix them. (0.35P)
for i=1:6;i=3;multiplied(i)=i*43;end

% Problems: 
%(NB) 1. difficult to read
%(NB)    ...no blanks
%(NB)    ...no new lines
%(NB) better to read:
for i = 1:6
    i = 3   %(NB) but why i=3??? Why do you use i? it is part of the for loop!
    multiplied(i) = i * 43
end
%(NB) 2. not self explaining
%(NB)    ...no background info
%(NB)    ...no comments
%(NB)    ...counter i is set to 3 within the for loop (why???)
%(NB) 3. the loop creates 6 times the same result "multiplied = [0,0,129]"
%(NB) but is this the result the author was expecting to receive? I think: No!
%(NB) I assume the goal was to create a vector with following elements:
%(NB) 43 86 129 172 215 258
%(NB) This could be done by
i=6;
multiplied = 43 * (1:i);
%(NB) if you want to do it by a for-loop:
clear multiplied
multiplied(1:6) = 0; %(NB) Assign "multiplied" to prevent size-change on every loop
for i = 1:6
    multiplied(i) = i*43;
end
%(NB) and if the result shall be "multilied = [0,0,129]":
multiplied = [0,0,129];



% b) Rewrite the complete following code to get the same result without a
% loop in one single command instruction (no ";" or ","). In general, you
% should always see whether it's possible to avoid loops and use efficient
% matrix computation when programming in MATLAB. (0.4P)

nums = round(logspace(1,3,15));
numlogs = zeros(size(nums));
for numi=1:length(nums)
numlogs(numi) = log(nums(numi));
end

numslogs_nb = log(round(logspace(1,3,15))); %(NB) renaming to "numslog_nb" for traceability reasons
%(NB) Crosscheck: sum(numslogs_nb - numlogs) == 0 is true?

%%
scores(1) = 0

%% 2) (1.25P)
% The following line waits for a user input and saves it in a variable:
number = input('Enter number greater than zero: '); 

% a) The "task" variable is a text containing the task of b).
% Convert the following task to one line of readable character array text. (0.75P)
% Hint: Look for resources to Convert from Numeric Values to Character Array 
load task;
numbers_to_letters = char(task{1:4});
transponse_numbers_to_letters = numbers_to_letters';
readable_character_arrey_one_line = transponse_numbers_to_letters(:)'

%(NB) a bit smarter:
readable_character_arrey_one_line_smart = [char(task{1}) char(task{2}) char(task{3}) char(task{4})]
%(NB) I think it can be solved smarter. Please provide feedback how!

% b) Use a while loop to repeat the input question until the number is actually greater. (0.5P)
number = -9999
while ((number < 0) || (number == 0)) 
    number = input('Enter number greater than zero: '); 
end




%%
scores(2) = 0

%% 3) (2.5P)
% a) Create a 25-element vector of normally distributed random numbers. 
% Test whether each element is greater than 1 and print 
% out the result. (1P)
% The display output should be, for example:
% 
% ...
% The 3rd element is -2.435 and is not greater than 1.
% ...
% The 15th element is 1.581 and is greater than 1.
% ...
% 
% b) Make sure your code has exceptions to print 1st, 12th, 23rd, etc. 
% instead of 1th, 12nd, 23th, etc. (1.5P)
% 
% You can make everything in one go, I will check whether or not b) is
% correct! You can assume that no vector with more than two digits will be
% used. Hints: take a detour over strings to check for the last digit.
% any/all can make it easier

clear                                %(NB) clean up working memory
clc                                  %(NB) clean up command window

n = 25;
vector = randn(n,1);                 %(NB) create a random normal distr. vector with n elements
grater_one = vector(:) > 1;     %(NB) logical array TRUE if vector-element is larger than one, otherwise FALSE

ending = string(ones(n,1));          %(NB) Create (for later) a str.array for endings 'th', 'st', 'nd' & 'rd'
for i = 1:n
    ending(i) = 'th';                %(NB) first step all items set to 'th'
    if (mod(i,10)==1) && (i~=11)     %(NB) exceptions for '1st', '21st', '31st', ....
        ending(i) = 'st';
    elseif (mod(i,10)==2) && (i~=12) %(NB) exceptions for '2nd', '22nd', '33nd',...
           ending(i) = 'nd';
    elseif (mod(i,10)==3) && (i~=13) %(NB) exceptions for '3rd', '23rd', '33rd',....
           ending(i) = 'rd';
    end
    %(NB)
    if grater_one(i)            %(NB) print statement 'grater or not grater than one'
        display(['the ' num2str(i) ending{i} ' element is ' num2str(vector(i)) ' and is grater than one.'])
    else
        display(['the ' num2str(i) ending{i} ' element is ' num2str(vector(i)) ' and is not grater than one.'])
    end
end

%%
scores(3) = 0

%%
final_score = sum(scores)

