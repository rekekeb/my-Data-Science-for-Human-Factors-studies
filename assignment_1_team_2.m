% Assignment 1 for the class Data Science for Human Factors:
% MATLAB is a very fancy calculator
% 
% Write the code in the sections below and, if necessary, your final answer
% as a comment.
%
% The filename should be assignment_1_team_<x>
%
% Team: 2

scores = 0;

%% 1) (1.5P)
% MATLAB as a Calculator

% a) What is larger: The square of 1.5 or the third root of the square of 3? 
% Compute this here, leave the code in, and delete the wrong answer. (0.25P)

1.5^2;   %(NB) results to 2.2500
3^(2/3); %(NB) results to 2.0801 < 2.2500!

% -> The square of 1.5

% b) An airplane flies with an average speed of 800km/h from Berlin to New York.
% The distance is 6381km. How long will it take to get there? 
% Give your answers in hours:min:sec. (0.5P)
6381/800    %(NB) calculate hours: 7.9763 h
(ans-7)*60  %(NB) calculate minutes: 58.5750 min
(ans-58)*60 %(NB) calculate seconds: 34.5000 sec

%(NB) another solution:
t = duration(hours(6381/800),'Format','hh:mm:ss'); %(NB) t = duration 07:58:34

% It takes the airplane 7:58:34 to fly to New York.

% c) How long does it take the airplane to fly once around the earth? 
% (Hint: google "MATLAB earth radius", "MATLAB pi")
% Use variables in your code!
% Give your answers in hours:min:sec. (0.75P)

distance = 2 * pi * earthRadius('km'); %(NB) circumference = 2 * pi * radius [km]
speed = 800;                           %(NB)[km/h]
T = duration(hours(distance/speed),'Format','hh:mm:ss'); %(NB) T = duration 50:02:15

% It takes the airplane 50:02:15 to fly around the earth.

%%
scores(1) = 0

%% 2) (2P)
% Use the colon operator to obtain the following number sequences

% a) 1 2 3 4 5 (0.2P)
1:5

% b) -4.0000   -3.5000   -3.0000   -2.5000   -2.0000 (0.2P)

-4:0.5:-2

% c) 10 20 30 40 50 60 70 (0.2P)
10:10:70

% d) -4 15 34 53 (0.2P)
-4:19:53


% e) 100 91 82 73 64 55 46 (0.2P)
100:-9:46

% f) "1:10" obtains the integer numbers from 1 to 10. 
% Add exactly two characters to the command to obtain only odd numbers. (0.5P)
1:2:10


% g) What can be changed in the command that will not lead to a different result? (0.5P)
%       Don't just recompute the input, but change the content of the
%       command (e.g. NOT 1:(1+1):10)
1:2:9




%%
scores(2) = 0;

%% 3) (1P)
% Working with variables

% a) Create code that calculates the area of a circle for a variable radius r. (0.5P)

% e.g.
r = 5;

area = pi * r^2; %(NB) area = 78.5398

% b) Create code that caculates the quadratic formula (http://bfy.tw/30jL)
% for the variables a, b, and c. (0.5P)

% e.g.
a = 2;
b = -4;
c = -16;

%(NB) based on ax^2 + bx + c = 0  x_1 and x_2 result to: 
x_1 = (-b - (b * b - 4 * a * c)^0.5) / (2 * a); %(NB) x_1 = -2
x_2 = (-b + (b * b - 4 * a * c)^0.5) / (2 * a); %(NB) x_2 = +4

%(NB)% % % % % % % % % % %   C R O S S C H E C K   % % % % % % % % % % % 
%(NB)             ax^2        + bx        + c     = 0            = 0 with:
%(NB) x_1 = -2 => 2*(-2)*(-2) + (-4)*(-2) + (-16) = 8 + 8 - 16   = 0 :-)
%(NB) x_2 = 4  => 2*4*4       + (-4)*4    + (-16) = 32 - 16 - 16 = 0 :-)

%% 
scores(3) = 0;

%%
final_score = sum(scores);

