

% Basic setup
clc;
close all;
clear vars;

%Gets subject Info sets up experiment
prompt = {'Enter subject number:'}; %description of fields
defaults = {''};%you can put in default responses
title='WELCOME';
answer = inputdlg(prompt,title,1,defaults); %opens dialog
SUBJECT = answer{1,:}; %Gets Subject Name
outputfile=[ 'subject' SUBJECT '_agencydata' '.xls'];

Screen('Preference', 'SkipSyncTests',2); 
PsychDefaultSetup(2);
screen=max(Screen('Screens'));

% Define black, white and grey
black = BlackIndex(screen);
white = WhiteIndex(screen);
grey = white / 2;


%LOADING IMAGES%
%continents
C1=imread('europe.png');
C2=imread('southamerica.png');
C3=imread('africa.png');
%europe
C11=imread('greece.png');
C12=imread('spain.png');
C13=imread('france.png');
%southamerica
C21=imread('brazil.png');
C22=imread('chile.png');
C23=imread('colombia.png');
%africa
C31=imread('egypt.png');
C32=imread('nigeria.png');
C33=imread('kenya.png');
%greece
C111=imread('greece_culture.png');
C112=imread('greece_History&politics.png');
C113=imread('greece_natural.png');
C114=imread('greece_economy.png');
C115=imread('greece_food.png');
%spain
C121=imread('spain_culture.png');
C122=imread('spain_politics.png');
C123=imread('spain_natural.png');
C124=imread('spain_economy.png');
C125=imread('spain_food.png');

%france
C131=imread('france_culture.png');
C132=imread('france_history.png');
C133=imread('france_natural.png');
C134=imread('france_economy.png');
C135=imread('france_food.png');

%brazil
C211=imread('brazil_culture.png');
C212=imread('brazil_history.png');
C213=imread('brazil_natural.png');
C214=imread('brazil_economy.png');
C215=imread('brazil_food.png');
%chile
C221=imread('chile_culture.png');
C222=imread('chile_history.png');
C223=imread('chile_natural.png');
C224=imread('chile_economy.png');
C225=imread('chile_food.png');
%colombia
C231=imread('colombia_culture.png');
C232=imread('colombia_history.png');
C233=imread('colombia_natural.png');
C234=imread('colombia_economy.png');
C235=imread('colombia_food.png');

%egypt
C311=imread('egypt_culture.png');
C312=imread('egypt_history.png');
C313=imread('egypt_natural.png');
C314=imread('egypt_economy.png');
C315=imread('egypt_food.png');

%nigeria
C321=imread('nigeria_culture.png');
C322=imread('nigeria_history.png');
C323=imread('nigeria_natural.png');
C324=imread('nigeria_economy.png');
C325=imread('nigeria_food.png');

%kenya
C331=imread('kenya_culture.png');
C332=imread('kenya_history.png');
C333=imread('kenya_natural.png');
C334=imread('kenya_economy.png');
C335=imread('kenya_food.png');

% INFORMATION ON CONTINENTS%
euroinfo=imread('europe_info.png');
southamericainfo=imread('southamerica_info.png');
africainfo=imread('africa_info.png');
greeceinfo=imread('greece_info.png');
spaininfo=imread('spain_info.png');
franceinfo=imread('france_info.png');
brazilinfo=imread('brazil_info.png');
chileinfo=imread('chile_info.png');
colombiainfo=imread('colombia_info.png');
egyptinfo=imread('egypt_info.png');
nigeriainfo=imread('nigeria_info.png');
kenyainfo=imread('kenya_info.png');


%opening window
[window, windowRect]=PsychImaging('Openwindow', screen,black);
xcen = windowRect(3)/2;
ycen = windowRect(4)/2;

%  texture for each continent
T1 = Screen('MakeTexture', window, C1);
T2 = Screen('MakeTexture', window, C2);
T3 = Screen('MakeTexture', window, C3);
% texture for each countries in europe
T4= Screen('MakeTexture',window,C11);
T5=Screen('MakeTexture',window,C12);
T6=Screen('MakeTexture',window,C13);
% texture for south america
T7= Screen('MakeTexture',window,C21);
T8=Screen('MakeTexture',window,C22);
T9=Screen('MakeTexture',window,C23);
% texture for africa
T10= Screen('MakeTexture',window,C31);
T11=Screen('MakeTexture',window,C32);
T12=Screen('MakeTexture',window,C33);
%texture for information on greece
greece_culture= Screen('MakeTexture',window,C111);
greece_history=Screen('MakeTexture',window,C112);
greece_natural=Screen('MakeTexture',window,C113);
greece_economy=Screen('MakeTexture',window,C114);
greece_food=Screen('MakeTexture',window,C115);
%texture for information on spain
spain_culture= Screen('MakeTexture',window,C121);
spain_history=Screen('MakeTexture',window,C122);
spain_natural=Screen('MakeTexture',window,C123);
spain_economy=Screen('MakeTexture',window,C124);
spain_food=Screen('MakeTexture',window,C125);
%texture for information on France
france_culture= Screen('MakeTexture',window,C131);
france_history=Screen('MakeTexture',window,C132);
france_natural=Screen('MakeTexture',window,C133);
france_economy=Screen('MakeTexture',window,C134);
france_food=Screen('MakeTexture',window,C135);

%texture for information on Brazil
brazil_culture= Screen('MakeTexture',window,C211);
brazil_history=Screen('MakeTexture',window,C212);
brazil_natural=Screen('MakeTexture',window,C213);
brazil_economy=Screen('MakeTexture',window,C214);
brazil_food=Screen('MakeTexture',window,C215);

%texture for information on chile
chile_culture= Screen('MakeTexture',window,C221);
chile_history=Screen('MakeTexture',window,C222);
chile_natural=Screen('MakeTexture',window,C223);
chile_economy=Screen('MakeTexture',window,C224);
chile_food=Screen('MakeTexture',window,C225);

%texture for information on colombia
colombia_culture= Screen('MakeTexture',window,C231);
colombia_history=Screen('MakeTexture',window,C232);
colombia_natural=Screen('MakeTexture',window,C233);
colombia_economy=Screen('MakeTexture',window,C234);
colombia_food=Screen('MakeTexture',window,C235);

%texture for information on egypt
egypt_culture= Screen('MakeTexture',window,C311);
egypt_history=Screen('MakeTexture',window,C312);
egypt_natural=Screen('MakeTexture',window,C313);
egypt_economy=Screen('MakeTexture',window,C314);
egypt_food=Screen('MakeTexture',window,C315);

%texture for information on Nigeria
nigeria_culture= Screen('MakeTexture',window,C321);
nigeria_history=Screen('MakeTexture',window,C322);
nigeria_natural=Screen('MakeTexture',window,C323);
nigeria_economy=Screen('MakeTexture',window,C324);
nigeria_food=Screen('MakeTexture',window,C325);

%texture for information on kenya
kenya_culture= Screen('MakeTexture',window,C331);
kenya_history=Screen('MakeTexture',window,C332);
kenya_natural=Screen('MakeTexture',window,C333);
kenya_economy=Screen('MakeTexture',window,C334);
kenya_food=Screen('MakeTexture',window,C335);

%Texture for information on continents
euro_info = Screen('MakeTexture', window,euroinfo);
southamerica_info= Screen('MakeTexture', window,southamericainfo);
africa_info= Screen('MakeTexture', window,africainfo);
%info on countries
greece_info= Screen('MakeTexture', window,greeceinfo);
spain_info=Screen('MakeTexture', window,spaininfo);
france_info=Screen('MakeTexture', window,franceinfo);
brazil_info=Screen('MakeTexture', window,brazilinfo);
colombia_info=Screen('MakeTexture', window,colombiainfo);
chile_info=Screen('MakeTexture', window,chileinfo);
egypt_info=Screen('MakeTexture', window,egyptinfo);
nigeria_info=Screen('MakeTexture', window,nigeriainfo);
kenya_info=Screen('MakeTexture', window,kenyainfo);


        %%%%%%SPECIFING LOCATION FOR EACH STIMULI%%%%%%
        
rect1 = CenterRectOnPointd([0 0 250 250], xcen-(xcen/1.5), ycen-(ycen/1.5))';% europe
rect2 = CenterRectOnPointd([0 0 250 250], xcen, ycen-(ycen/1.5))';% sa
rect3 = CenterRectOnPointd([0 0 250 250], xcen+(xcen/1.5), ycen-(ycen/1.5))';% africa
%european countries
rect4 = CenterRectOnPointd([0 0 150 150], xcen-(xcen/1.1), ycen-(ycen/8))';% greece
rect5 = CenterRectOnPointd([0 0 150 150], xcen-(xcen/1.4), ycen-(ycen/8))';%spain
rect6 = CenterRectOnPointd([0 0 150 150], xcen-(xcen/1.9), ycen-(ycen/8))';%france
%southamerican countries
rect7 = CenterRectOnPointd([0 0 150 150], xcen-(xcen/5.4),ycen-(ycen/8))';%brazil
rect8 = CenterRectOnPointd([0 0 150 150], xcen, ycen-(ycen/8))';%chile
rect9 = CenterRectOnPointd([0 0 150 150], xcen+(xcen/5.4), ycen-(ycen/8))';%colombia
%african countries
rect10 = CenterRectOnPointd([0 0 150 150], xcen+(xcen/1.9), ycen-(ycen/8))';% egypt
rect11 = CenterRectOnPointd([0 0 150 150], xcen+(xcen/1.4), ycen-(ycen/8))';% nigeria
rect12 = CenterRectOnPointd([0 0 150 150], xcen+(xcen/1.1), ycen-(ycen/8))';% kenya
% greece subdomains
rect13 = CenterRectOnPointd([0 0 100 50], xcen-(xcen/1.1), ycen+(ycen/5))'; %greece culture
rect14 = CenterRectOnPointd([0 0 130 80], xcen-(xcen/1.1), ycen+(ycen/2.8))';%greece hist
rect15 = CenterRectOnPointd([0 0 130 90], xcen-(xcen/1.1), ycen+(ycen/1.85))';%" economy
rect16 = CenterRectOnPointd([0 0 130 90], xcen-(xcen/1.1), ycen+(ycen/1.35))';%" natural envi
rect17 = CenterRectOnPointd([0 0 100 50], xcen-(xcen/1.1), ycen+(ycen/1.1))';%food
% spain subdomains
rect18 = CenterRectOnPointd([0 0 100 50], xcen-(xcen/1.4), ycen+(ycen/5))'; % culture
rect19 = CenterRectOnPointd([0 0 130 80], xcen-(xcen/1.4), ycen+(ycen/2.8))';%hist
rect20 = CenterRectOnPointd([0 0 130 90], xcen-(xcen/1.4), ycen+(ycen/1.85))';%economy
rect21 = CenterRectOnPointd([0 0 130 90], xcen-(xcen/1.4), ycen+(ycen/1.35))';% natural envi
rect22 = CenterRectOnPointd([0 0 100 50], xcen-(xcen/1.4), ycen+(ycen/1.1))';%food
% france subdomains
rect23 = CenterRectOnPointd([0 0 100 50], xcen-(xcen/1.9), ycen+(ycen/5))'; % culture
rect24 = CenterRectOnPointd([0 0 130 80], xcen-(xcen/1.9), ycen+(ycen/2.8))';%hist
rect25 = CenterRectOnPointd([0 0 130 90], xcen-(xcen/1.9), ycen+(ycen/1.85))';%economy
rect26 = CenterRectOnPointd([0 0 130 90], xcen-(xcen/1.9), ycen+(ycen/1.35))';%natural envi
rect27 = CenterRectOnPointd([0 0 100 50], xcen-(xcen/1.9), ycen+(ycen/1.1))';%food

% Brazil subdomains
rect28 = CenterRectOnPointd([0 0 100 50], xcen-(xcen/5.4), ycen+(ycen/5))'; % culture
rect29 = CenterRectOnPointd([0 0 130 80], xcen-(xcen/5.4), ycen+(ycen/2.8))';%hist
rect30 = CenterRectOnPointd([0 0 130 90], xcen-(xcen/5.4), ycen+(ycen/1.85))';%economy
rect31 = CenterRectOnPointd([0 0 130 90], xcen-(xcen/5.4), ycen+(ycen/1.35))';%natural envi
rect32 = CenterRectOnPointd([0 0 100 50], xcen-(xcen/5.4), ycen+(ycen/1.1))';%food

% Chile subdomains
rect33 = CenterRectOnPointd([0 0 100 50], xcen, ycen+(ycen/5))'; % culture
rect34 = CenterRectOnPointd([0 0 130 80], xcen, ycen+(ycen/2.8))';%hist
rect35 = CenterRectOnPointd([0 0 130 90], xcen, ycen+(ycen/1.85))';%economy
rect36 = CenterRectOnPointd([0 0 130 90], xcen, ycen+(ycen/1.35))';%natural envi
rect37 = CenterRectOnPointd([0 0 100 50], xcen, ycen+(ycen/1.1))';%food

% Colombia subdomains
rect38 = CenterRectOnPointd([0 0 100 50], xcen+(xcen/5.4), ycen+(ycen/5))'; % culture
rect39 = CenterRectOnPointd([0 0 130 80], xcen+(xcen/5.4), ycen+(ycen/2.8))';%hist
rect40 = CenterRectOnPointd([0 0 130 90], xcen+(xcen/5.4), ycen+(ycen/1.85))';%economy
rect41 = CenterRectOnPointd([0 0 130 90], xcen+(xcen/5.4), ycen+(ycen/1.35))';%natural envi
rect42 = CenterRectOnPointd([0 0 100 50], xcen+(xcen/5.4), ycen+(ycen/1.1))';%food

%AFRICAN COUNTRIES
% egypt
rect43 = CenterRectOnPointd([0 0 100 50], xcen+(xcen/1.9), ycen+(ycen/5))'; % culture
rect44 = CenterRectOnPointd([0 0 130 80], xcen+(xcen/1.9), ycen+(ycen/2.8))';%hist
rect45 = CenterRectOnPointd([0 0 130 90], xcen+(xcen/1.9), ycen+(ycen/1.85))';%economy
rect46 = CenterRectOnPointd([0 0 130 90], xcen+(xcen/1.9), ycen+(ycen/1.35))';%natural envi
rect47 = CenterRectOnPointd([0 0 100 50], xcen+(xcen/1.9), ycen+(ycen/1.1))';%food

% nigeria
rect48 = CenterRectOnPointd([0 0 100 50], xcen+(xcen/1.4), ycen+(ycen/5))'; % culture
rect49 = CenterRectOnPointd([0 0 130 80], xcen+(xcen/1.4), ycen+(ycen/2.8))';%hist
rect50 = CenterRectOnPointd([0 0 130 90], xcen+(xcen/1.4), ycen+(ycen/1.85))';%economy
rect51 = CenterRectOnPointd([0 0 130 90], xcen+(xcen/1.4), ycen+(ycen/1.35))';%natural envi
rect52 = CenterRectOnPointd([0 0 100 50], xcen+(xcen/1.4), ycen+(ycen/1.1))';%food

% kenya
rect53 = CenterRectOnPointd([0 0 100 50], xcen+(xcen/1.1), ycen+(ycen/5))'; % culture
rect54 = CenterRectOnPointd([0 0 130 80], xcen+(xcen/1.1), ycen+(ycen/2.8))';%hist
rect55 = CenterRectOnPointd([0 0 130 90], xcen+(xcen/1.1), ycen+(ycen/1.85))';%economy
rect56 = CenterRectOnPointd([0 0 130 90], xcen+(xcen/1.1), ycen+(ycen/1.35))';%natural envi
rect57 = CenterRectOnPointd([0 0 100 50], xcen+(xcen/1.1), ycen+(ycen/1.1))';%food

whatclicked=struct();
curiorating=struct();
newrating=struct();
RT=struct();

frontpage=1;
while frontpage==1
Screen('TextSize',window,40)
Screen('TextFont', window, 'MV Boli');
Screen('TextColor', window,white);
Screen('DrawTexture',window,T1,[],rect1);
Screen('DrawText',window,'EUROPE',xcen-(xcen/1.3),ycen-(ycen/2.5));
Screen('DrawTexture',window,T2,[],rect2);
Screen('DrawText',window,'SOUTH AMERICA',xcen-(xcen/6),ycen-(ycen/2.5));
Screen('DrawTexture',window,T3,[],rect3);
Screen('DrawText',window,'AFRICA',xcen+(xcen/1.7),ycen-(ycen/2.5));
Screen('DrawTexture',window,T4,[],rect4);
Screen('TextSize',window,35)
Screen('DrawText',window,'Greece',xcen-(xcen/1.03),ycen+(ycen/20));
Screen('DrawTexture',window,T5,[],rect5);
Screen('DrawText',window,'Spain',xcen-(xcen/1.3),ycen+(ycen/20));
Screen('DrawTexture',window,T6,[],rect6);
Screen('DrawText',window,'France',xcen-(xcen/1.7),ycen+(ycen/20));
Screen('DrawTexture',window,T7,[],rect7);
Screen('DrawText',window,'Brazil',xcen-(xcen/4.4),ycen+(ycen/20));
Screen('DrawTexture',window,T8,[],rect8);
Screen('DrawText',window,'Chile',xcen-(xcen/20),ycen+(ycen/20));
Screen('DrawTexture',window,T9,[],rect9);
Screen('DrawText',window,'Colombia',xcen+(xcen/8),ycen+(ycen/20));
Screen('DrawTexture',window,T10,[],rect10);
Screen('DrawText',window,'Egypt',xcen+(xcen/2.1),ycen+(ycen/20));
Screen('DrawTexture',window,T11,[],rect11);
Screen('DrawText',window,'Nigeria',xcen+(xcen/1.5),ycen+(ycen/20));
Screen('DrawTexture',window,T12,[],rect12);
Screen('DrawText',window,'Kenya',xcen+(xcen/1.2),ycen+(ycen/20));
%greece domains
Screen('FrameRect',window,white,rect13);
Screen('FrameRect',window,white,rect14);
Screen('FrameRect',window,white,rect15);
Screen('FrameRect',window,white,rect16);
Screen('FrameRect',window,white,rect17);
%spain domains
Screen('FrameRect',window,white,rect18);
Screen('FrameRect',window,white,rect19);
Screen('FrameRect',window,white,rect20);
Screen('FrameRect',window,white,rect21);
Screen('FrameRect',window,white,rect22);

%France domains
Screen('FrameRect',window,white,rect23);
Screen('FrameRect',window,white,rect24);
Screen('FrameRect',window,white,rect25);
Screen('FrameRect',window,white,rect26);
Screen('FrameRect',window,white,rect27);

%Brazil domains
Screen('FrameRect',window,white,rect28);
Screen('FrameRect',window,white,rect29);
Screen('FrameRect',window,white,rect30);
Screen('FrameRect',window,white,rect31);
Screen('FrameRect',window,white,rect32);

%chile domains
Screen('FrameRect',window,white,rect33);
Screen('FrameRect',window,white,rect34);
Screen('FrameRect',window,white,rect35);
Screen('FrameRect',window,white,rect36);
Screen('FrameRect',window,white,rect37);

%colombia domains
Screen('FrameRect',window,white,rect38);
Screen('FrameRect',window,white,rect39);
Screen('FrameRect',window,white,rect40);
Screen('FrameRect',window,white,rect41);
Screen('FrameRect',window,white,rect42);

% egypt domains
Screen('FrameRect',window,white,rect43);
Screen('FrameRect',window,white,rect44);
Screen('FrameRect',window,white,rect45);
Screen('FrameRect',window,white,rect46);
Screen('FrameRect',window,white,rect47);

% nigeria domains
Screen('FrameRect',window,white,rect48);
Screen('FrameRect',window,white,rect49);
Screen('FrameRect',window,white,rect50);
Screen('FrameRect',window,white,rect51);
Screen('FrameRect',window,white,rect52);

% kenya domains
Screen('FrameRect',window,white,rect53);
Screen('FrameRect',window,white,rect54);
Screen('FrameRect',window,white,rect55);
Screen('FrameRect',window,white,rect56);
Screen('FrameRect',window,white,rect57);


% Text for greece subdomains
Screen('TextSize',window,20)
Screen('DrawText',window,'Culture',xcen-(xcen/1.06), ycen+(ycen/5.5),white);
Screen('DrawText',window,'History',xcen-(xcen/1.06), ycen+(ycen/3.2),white);
Screen('DrawText',window,'&',xcen-(xcen/1.09), ycen+(ycen/2.9),white);
Screen('DrawText',window,'Politics',xcen-(xcen/1.06), ycen+(ycen/2.6),white);
Screen('DrawText',window,'Economy',xcen-(xcen/1.05), ycen+(ycen/2),white);
Screen('DrawText',window,'&',xcen-(xcen/1.09), ycen+(ycen/1.9),white);
Screen('DrawText',window,'Development',xcen-(xcen/1.03), ycen+(ycen/1.8),white);
Screen('DrawText',window,'Natural',xcen-(xcen/1.05), ycen+(ycen/1.45),white);
Screen('DrawText',window,'Environment',xcen-(xcen/1.03), ycen+(ycen/1.33),white);
Screen('DrawText',window,'Food',xcen-(xcen/1.07), ycen+(ycen/1.12),white);

% Text for spain subdomains
Screen('DrawText',window,'Culture',(xcen-(xcen/1.33)), ycen+(ycen/5.5),white);
Screen('DrawText',window,'History',xcen-(xcen/1.33), ycen+(ycen/3.2),white);
Screen('DrawText',window,'&',xcen-(xcen/1.36), ycen+(ycen/2.9),white);
Screen('DrawText',window,'Politics',xcen-(xcen/1.33), ycen+(ycen/2.6),white);
Screen('DrawText',window,'Economy',xcen-(xcen/1.32), ycen+(ycen/2),white);
Screen('DrawText',window,'&',xcen-(xcen/1.36), ycen+(ycen/1.9),white);
Screen('DrawText',window,'Development',xcen-(xcen/1.29), ycen+(ycen/1.8),white);
Screen('DrawText',window,'Natural',xcen-(xcen/1.33), ycen+(ycen/1.45),white);
Screen('DrawText',window,'Environment',xcen-(xcen/1.29), ycen+(ycen/1.33),white);
Screen('DrawText',window,'Food',xcen-(xcen/1.34), ycen+(ycen/1.12),white);

% Text for france subdomains
Screen('DrawText',window,'Culture',(xcen-(xcen/1.78)), ycen+(ycen/5.5),white);
Screen('DrawText',window,'History',xcen-(xcen/1.78), ycen+(ycen/3.2),white);
Screen('DrawText',window,'&',xcen-(xcen/1.82), ycen+(ycen/2.9),white);
Screen('DrawText',window,'Politics',xcen-(xcen/1.78), ycen+(ycen/2.6),white);
Screen('DrawText',window,'Economy',xcen-(xcen/1.76), ycen+(ycen/2),white);
Screen('DrawText',window,'&',xcen-(xcen/1.82), ycen+(ycen/1.9),white);
Screen('DrawText',window,'Development',xcen-(xcen/1.70), ycen+(ycen/1.8),white);
Screen('DrawText',window,'Natural',xcen-(xcen/1.78), ycen+(ycen/1.45),white);
Screen('DrawText',window,'Environment',xcen-(xcen/1.70), ycen+(ycen/1.33),white);
Screen('DrawText',window,'Food',xcen-(xcen/1.79), ycen+(ycen/1.12),white);

% Text for Brazil subdomains
Screen('DrawText',window,'Culture',(xcen-(xcen/4.5)), ycen+(ycen/5.5),white);
Screen('DrawText',window,'History',xcen-(xcen/4.5), ycen+(ycen/3.2),white);
Screen('DrawText',window,'&',xcen-(xcen/4.9), ycen+(ycen/2.9),white);
Screen('DrawText',window,'Politics',xcen-(xcen/4.5), ycen+(ycen/2.6),white);
Screen('DrawText',window,'Economy',xcen-(xcen/4.4), ycen+(ycen/2),white);
Screen('DrawText',window,'&',xcen-(xcen/4.9), ycen+(ycen/1.9),white);
Screen('DrawText',window,'Development',xcen-(xcen/4), ycen+(ycen/1.8),white);
Screen('DrawText',window,'Natural',xcen-(xcen/4.5), ycen+(ycen/1.45),white);
Screen('DrawText',window,'Environment',xcen-(xcen/4), ycen+(ycen/1.33),white);
Screen('DrawText',window,'Food',xcen-(xcen/4.6), ycen+(ycen/1.12),white);

% Text for Chile subdomains
Screen('DrawText',window,'Culture',xcen-(xcen/28), ycen+(ycen/5.5),white);
Screen('DrawText',window,'History',xcen-(xcen/28), ycen+(ycen/3.2),white);
Screen('DrawText',window,'&',xcen-(xcen/55), ycen+(ycen/2.9),white);
Screen('DrawText',window,'Politics',xcen-(xcen/28), ycen+(ycen/2.6),white);
Screen('DrawText',window,'Economy',xcen-(xcen/25), ycen+(ycen/2),white);
Screen('DrawText',window,'&',xcen-(xcen/55), ycen+(ycen/1.9),white);
Screen('DrawText',window,'Development',xcen-(xcen/15), ycen+(ycen/1.8),white);
Screen('DrawText',window,'Natural',xcen-(xcen/28), ycen+(ycen/1.45),white);
Screen('DrawText',window,'Environment',xcen-(xcen/15), ycen+(ycen/1.33),white);
Screen('DrawText',window,'Food',xcen-(xcen/31), ycen+(ycen/1.12),white);

% Text for Colombia subdomains
Screen('DrawText',window,'Culture',(xcen+(xcen/6.5)), ycen+(ycen/5.5),white);
Screen('DrawText',window,'History',xcen+(xcen/6.5), ycen+(ycen/3.2),white);
Screen('DrawText',window,'&',xcen+(xcen/5.5), ycen+(ycen/2.9),white);
Screen('DrawText',window,'Politics',xcen+(xcen/6.5), ycen+(ycen/2.6),white);
Screen('DrawText',window,'Economy',xcen+(xcen/7), ycen+(ycen/2),white);
Screen('DrawText',window,'&',xcen+(xcen/5.5), ycen+(ycen/1.9),white);
Screen('DrawText',window,'Development',xcen+(xcen/8), ycen+(ycen/1.8),white);
Screen('DrawText',window,'Natural',xcen+(xcen/7), ycen+(ycen/1.45),white);
Screen('DrawText',window,'Environment',xcen+(xcen/8), ycen+(ycen/1.33),white);
Screen('DrawText',window,'Food',xcen+(xcen/6.6), ycen+(ycen/1.12),white);

% Text for egypt subdomains
Screen('DrawText',window,'Culture',xcen+(xcen/2.05), ycen+(ycen/5.5),white);
Screen('DrawText',window,'History',xcen+(xcen/2.05), ycen+(ycen/3.2),white);
Screen('DrawText',window,'&',xcen+(xcen/1.95), ycen+(ycen/2.9),white);
Screen('DrawText',window,'Politics',xcen+(xcen/2.05), ycen+(ycen/2.6),white);
Screen('DrawText',window,'Economy',xcen+(xcen/2.05), ycen+(ycen/2),white);
Screen('DrawText',window,'&',xcen+(xcen/1.95), ycen+(ycen/1.9),white);
Screen('DrawText',window,'Development',xcen+(xcen/2.15), ycen+(ycen/1.8),white);
Screen('DrawText',window,'Natural',xcen+(xcen/2.05), ycen+(ycen/1.45),white);
Screen('DrawText',window,'Environment',xcen+(xcen/2.15), ycen+(ycen/1.33),white);
Screen('DrawText',window,'Food',xcen+(xcen/2.02), ycen+(ycen/1.12),white);

% Text for nigeria subdomains
Screen('DrawText',window,'Culture',xcen+(xcen/1.48), ycen+(ycen/5.5),white);
Screen('DrawText',window,'History',xcen+(xcen/1.48), ycen+(ycen/3.2),white);
Screen('DrawText',window,'&',xcen+(xcen/1.44), ycen+(ycen/2.9),white);
Screen('DrawText',window,'Politics',xcen+(xcen/1.48), ycen+(ycen/2.6),white);
Screen('DrawText',window,'Economy',xcen+(xcen/1.48), ycen+(ycen/2),white);
Screen('DrawText',window,'&',xcen+(xcen/1.44), ycen+(ycen/1.9),white);
Screen('DrawText',window,'Development',xcen+(xcen/1.52), ycen+(ycen/1.8),white);
Screen('DrawText',window,'Natural',xcen+(xcen/1.48), ycen+(ycen/1.45),white);
Screen('DrawText',window,'Environment',xcen+(xcen/1.52), ycen+(ycen/1.33),white);
Screen('DrawText',window,'Food',xcen+(xcen/1.47), ycen+(ycen/1.12),white);

% Text for kenya subdomains
Screen('DrawText',window,'Culture',xcen+(xcen/1.15), ycen+(ycen/5.5),white);
Screen('DrawText',window,'History',xcen+(xcen/1.15), ycen+(ycen/3.2),white);
Screen('DrawText',window,'&',xcen+(xcen/1.13), ycen+(ycen/2.9),white);
Screen('DrawText',window,'Politics',xcen+(xcen/1.15), ycen+(ycen/2.6),white);
Screen('DrawText',window,'Economy',xcen+(xcen/1.17), ycen+(ycen/2),white);
Screen('DrawText',window,'&',xcen+(xcen/1.13), ycen+(ycen/1.9),white);
Screen('DrawText',window,'Development',xcen+(xcen/1.18), ycen+(ycen/1.8),white);
Screen('DrawText',window,'Natural',xcen+(xcen/1.15), ycen+(ycen/1.45),white);
Screen('DrawText',window,'Environment',xcen+(xcen/1.18), ycen+(ycen/1.33),white);
Screen('DrawText',window,'Food',xcen+(xcen/1.14), ycen+(ycen/1.12),white);

rect59 = CenterRectOnPointd([0 0 90 30], xcen+(xcen/1.1), ycen-(ycen/1.1))';% africa
Screen('FrameRect', window ,white, rect59,1)
Screen('DrawText',window,'QUIT',xcen+(xcen/1.13), ycen-(ycen/1.08));




[x,y,buttons]=GetMouse(window);
if IsInRect(x,y,rect1)
    Screen('FrameRect', window , [1 0 0], rect1,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.EUR='europe';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,euro_info,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);%this should be the code for the key pressed
        enter_1=KbName(r_1);%Figure out what key was pressed
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about Europe?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 FRA_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.EUR_CURIO=FRA_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        EUR_NEW_RATING=KbName(q_1);
                        newrating.EUR_NEW= EUR_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_EUR=timer1_end-timer1_start;
                     RT.EUR=RT_EUR;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
        end
          
     end
       
    
elseif IsInRect(x,y,rect2)
    Screen('FrameRect', window , [1 0 0], rect2,5)
    if any(buttons)
        timer2_start=GetSecs;
        whatclicked.SA='South america';
        Screen('Flip',window)
        Screen ('DrawTexture',window,southamerica_info,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_2=find(RTkeyCode);
        enter_2=KbName(r_2);
        if enter_2=='Return'
             Q1=2;
             while Q1==2
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about South America?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.8*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_2=find(RTkeyCode);%this should be the code for the key pressed
                 SA_rating=KbName(Q_2);%Figure out what key was pressed
                 curiorating.SA_CURIO=SA_rating;
                 if keyIsDown
                     WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        SA_NEW_RATING=KbName(q_1);
                        newrating.SA_NEW= SA_NEW_RATING;
                     if keyIsDown
                         timer2_end=GetSecs;
                         Q1=0;
                     end
                     RT_SA=timer2_end-timer2_start;
                     RT.SA=RT_SA;
                 end
             end
              writetable(struct2table(curiorating), outputfile,'sheet',1);
              writetable(struct2table(newrating), outputfile,'sheet',2);
              writetable(struct2table(RT),outputfile,'sheet',3);
         end
    end

     %AFRICA%
elseif IsInRect(x,y,rect3)
    Screen('FrameRect', window , [1 0 0], rect3,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.AFR='AFRICA';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,africa_info,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about Africa?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 AFR_rating=KbName(Q_1);
                 curiorating.AFR_CURIO=AFR_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        AFR_NEW_RATING=KbName(q_1);
                        newrating.AFR_NEW= AFR_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_AFR=timer1_end-timer1_start;
                     RT.AFR=RT_AFR;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
        end
          
    end

   
 % GREECE %
elseif IsInRect(x,y,rect4)
    Screen('FrameRect', window , [1 0 0], rect4,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.GREECE='GREECE';
        Screen('Flip',window)
        Screen ('DrawTexture',window,greece_info,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about Greece?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 GRE_rating=KbName(Q_1);
                 curiorating.GRE_CURIO=GRE_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        GRE_NEW_RATING=KbName(q_1);
                        newrating.GRE_NEW= GRE_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_GRE=timer1_end-timer1_start;
                     RT.GRE=RT_GRE;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
        end
          
    end

  % SPAIN %
elseif IsInRect(x,y,rect5)
    Screen('FrameRect', window , [1 0 0], rect5,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.SPAIN='SPAIN';
        Screen('Flip',window)
        Screen ('DrawTexture',window,spain_info,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about Spain?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 SPA_rating=KbName(Q_1);
                 curiorating.SPA_CURIO=SPA_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        SPA_NEW_RATING=KbName(q_1);
                        newrating.SPA_NEW= SPA_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_SPA=timer1_end-timer1_start;
                     RT.SPA=RT_SPA;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
        end
          
    end


%FRANCE
elseif IsInRect(x,y,rect6)
    Screen('FrameRect', window , [1 0 0], rect6,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.FRANCE='FRANCE';
        Screen('Flip',window)
        Screen ('DrawTexture',window,france_info,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about France?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 FRA_rating=KbName(Q_1);
                 curiorating.FRA_CURIO=FRA_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        FRA_NEW_RATING=KbName(q_1);
                        newrating.FRA_NEW= FRA_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_FRA=timer1_end-timer1_start;
                     RT.FRA=RT_FRA;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
        end
          
    end

%BRAZIL
elseif IsInRect(x,y,rect7)
    Screen('FrameRect', window , [1 0 0], rect7,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.BRAZIL='BRAZIL';
        Screen('Flip',window)
        Screen ('DrawTexture',window,brazil_info,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about Brazil?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 BRAZ_rating=KbName(Q_1);
                 curiorating.BRAZ_CURIO=BRAZ_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        BRAZ_NEW_RATING=KbName(q_1);
                        newrating.BRAZ_NEW= BRAZ_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_BRAZ=timer1_end-timer1_start;
                     RT.BRAZ=RT_BRAZ;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
        end
          
    end

  


%CHILE
elseif IsInRect(x,y,rect8)
    Screen('FrameRect', window , [1 0 0], rect8,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.CHILE='CHILE';
        Screen('Flip',window)
        Screen ('DrawTexture',window,chile_info,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about Chile?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 CHILE_rating=KbName(Q_1);
                 curiorating.CHILE_CURIO=CHILE_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        CHILE_NEW_RATING=KbName(q_1);
                        newrating.CHILE_NEW= CHILE_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_CHILE=timer1_end-timer1_start;
                     RT.CHILE=RT_CHILE;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
        end
          
    end



%COLOMBIA
elseif IsInRect(x,y,rect9)
    Screen('FrameRect', window , [1 0 0], rect9,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.COLOMBIA='COLOMBIA';
        Screen('Flip',window)
        Screen ('DrawTexture',window,colombia_info,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about Colombia?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 COLOM_rating=KbName(Q_1);
                 curiorating.COLOM_CURIO=COLOM_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        COLOM_NEW_RATING=KbName(q_1);
                        newrating.COLOM_NEW= COLOM_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_COLOM=timer1_end-timer1_start;
                     RT.COLOM=RT_COLOM;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
        end
          
    end


  



%EGYPT
elseif IsInRect(x,y,rect10)
    Screen('FrameRect', window , [1 0 0], rect10,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.EGYPT='EGYPT';
        Screen('Flip',window)
        Screen ('DrawTexture',window,egypt_info,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about Egypt?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                EGYPT_rating=KbName(Q_1);
                 curiorating.EGYPT_CURIO=EGYPT_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        EGYPT_NEW_RATING=KbName(q_1);
                        newrating.EGYPT_NEW= EGYPT_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_EGYPT=timer1_end-timer1_start;
                     RT.EGYPT=RT_EGYPT;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
        end
          
    end


%NIGERIA
elseif IsInRect(x,y,rect11)
    Screen('FrameRect', window , [1 0 0], rect11,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.NIGERIA='NIGERIA';
        Screen('Flip',window)
        Screen ('DrawTexture',window,nigeria_info,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about Nigeria?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 NIG_rating=KbName(Q_1);
                 curiorating.NIGERIA_CURIO=NIG_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        NIG_NEW_RATING=KbName(q_1);
                        newrating.NIG_NEW= NIG_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_NIG=timer1_end-timer1_start;
                     RT.NIG=RT_NIG;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
        end
          
    end


%KENYA
elseif IsInRect(x,y,rect12)
    Screen('FrameRect', window , [1 0 0], rect12,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.KENYA='KENYA';
        Screen('Flip',window)
        Screen ('DrawTexture',window,kenya_info,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about Kenya?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 KEN_rating=KbName(Q_1);
                 curiorating.KEN_CURIO=KEN_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        KEN_NEW_RATING=KbName(q_1);
                        newrating.KEN_NEW= KEN_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_KEN=timer1_end-timer1_start;
                     RT.KEN=RT_KEN;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
        end
          
    end
    


%GREECE CULTURE
elseif IsInRect(x,y,rect13)
    Screen('FrameRect', window , [1 0 0], rect13,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.GRE_cult='GREECE CULTURE';
        Screen('Flip',window)
        Screen ('DrawTexture',window,greece_culture,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn more on this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.7*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 GRE_CUL_rating=KbName(Q_1);
                 curiorating.GRE_CUL_CURIO=GRE_CUL_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        GRE_CUL_NEW_RATING=KbName(q_1);
                        newrating.GRE_CUL_NEW= GRE_CUL_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_GRE_CUL=timer1_end-timer1_start;
                     RT.GRE_CUL=RT_GRE_CUL;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
        end
          
    end
    


  
%GREECE HISTORY
elseif IsInRect(x,y,rect14)
    Screen('FrameRect', window , [1 0 0], rect14,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.GRE_hist='GREECE history';
        Screen('Flip',window)
        Screen ('DrawTexture',window,greece_history,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn more on this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.7*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 GRE_HIST_rating=KbName(Q_1);
                 curiorating.GRE_HIST_CURIO=GRE_HIST_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        GRE_HIST_NEW_RATING=KbName(q_1);
                        newrating.GRE_HIST_NEW= GRE_HIST_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_GRE_HIST=timer1_end-timer1_start;
                     RT.GRE_HIST=RT_GRE_HIST;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
        end
          
    end
    

 
%GREECE ECONOMY AND DEVELOPMENT
elseif IsInRect(x,y,rect15)
    Screen('FrameRect', window , [1 0 0], rect15,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.GRE_ECO='GREECE ECONOMY';
        Screen('Flip',window)
        Screen ('DrawTexture',window,greece_economy,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn more on this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.7*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 GRE_ECO_rating=KbName(Q_1);
                 curiorating.GRE_ECO_CURIO=GRE_ECO_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        GRE_ECO_NEW_RATING=KbName(q_1);
                        newrating.GRE_ECO_NEW= GRE_ECO_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_GRE_ECO=timer1_end-timer1_start;
                     RT.GRE_ECO=RT_GRE_ECO;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
        end
          
    end


%GREECE NATURAL ENVIROINMENT
elseif IsInRect(x,y,rect16)
    Screen('FrameRect', window , [1 0 0], rect16,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.GRE_NAT='GREECE NATURAL';
        Screen('Flip',window)
        Screen ('DrawTexture',window,greece_natural,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn more on this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.7*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 GRE_NAT_rating=KbName(Q_1);
                 curiorating.GRE_NAT_CURIO=GRE_NAT_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        GRE_NAT_NEW_RATING=KbName(q_1);
                        newrating.GRE_NAT_NEW= GRE_NAT_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_GRE_NAT=timer1_end-timer1_start;
                     RT.GRE_NAT=RT_GRE_NAT;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
        end
          
    end

%GREECE FOOD
elseif IsInRect(x,y,rect17)
    Screen('FrameRect', window , [1 0 0], rect17,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.GRE_FOOD='GREECE food';
        Screen('Flip',window)
        Screen ('DrawTexture',window,greece_food,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn more on this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.7*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 GRE_FOOD_rating=KbName(Q_1);
                 curiorating.GRE_FOOD_CURIO=GRE_FOOD_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        GRE_FOOD_NEW_RATING=KbName(q_1);
                        newrating.GRE_FOOD_NEW= GRE_FOOD_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_GRE_FOOD=timer1_end-timer1_start;
                     RT.GRE_FOOD=RT_GRE_FOOD;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
        end
          
    end


%SPAIN CULTURE
elseif IsInRect(x,y,rect18)
    Screen('FrameRect', window , [1 0 0], rect18,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.SPA_CULT='SPAIN CULTURE';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,spain_culture,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 spa_CULT_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.SPA_CULT_CURIO=spa_CULT_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        SPA_cult_NEW_RATING=KbName(q_1);
                        newrating.SPA_CULT_NEW= SPA_cult_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_SPA_CULT=timer1_end-timer1_start;
                     RT.SPA_CULT=RT_SPA_CULT;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end    
     
    
 %SPAIN HISTORY
elseif IsInRect(x,y,rect19)
    Screen('FrameRect', window , [1 0 0], rect19,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.SPA_HIST='SPAIN HISTORY';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,spain_history,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 spa_HIST_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.SPA_HIST_CURIO=spa_HIST_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        SPA_HIST_NEW_RATING=KbName(q_1);
                        newrating.SPA_HIST_NEW= SPA_HIST_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_SPA_HIST=timer1_end-timer1_start;
                     RT.SPA_HIST=RT_SPA_HIST;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end    
     
%SPAIN ECONOMY
elseif IsInRect(x,y,rect20)
    Screen('FrameRect', window , [1 0 0], rect20,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.SPA_ECO='SPAIN ECONOMY';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,spain_economy,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 spa_ECO_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.SPA_ECO_CURIO=spa_ECO_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        SPA_ECO_NEW_RATING=KbName(q_1);
                        newrating.SPA_ECO_NEW= SPA_ECO_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_SPA_ECO=timer1_end-timer1_start;
                     RT.SPA_ECO=RT_SPA_ECO;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end    
     
    %SPAIN FOOD
elseif IsInRect(x,y,rect22)
    Screen('FrameRect', window , [1 0 0], rect22,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.SPA_food='SPAIN food';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,spain_food,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 spa_FOOD_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.SPA_FOOD_CURIO=spa_FOOD_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        SPA_FOOD_NEW_RATING=KbName(q_1);
                        newrating.SPA_FOOD_NEW= SPA_FOOD_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_SPA_FOOD=timer1_end-timer1_start;
                     RT.SPA_FOOD=RT_SPA_FOOD;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end    
     
    %SPAIN NATURAL
elseif IsInRect(x,y,rect21)
    Screen('FrameRect', window , [1 0 0], rect21,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.SPA_NAT='SPAIN NATURAL';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,spain_natural,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 spa_NAT_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.SPA_NAT_CURIO=spa_NAT_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        SPA_NAT_NEW_RATING=KbName(q_1);
                        newrating.SPA_NAT_NEW= SPA_NAT_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_SPA_NAT=timer1_end-timer1_start;
                     RT.SPA_NAT=RT_SPA_NAT;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end    
     

% FRANCE CULTURE
elseif IsInRect(x,y,rect23)
    Screen('FrameRect', window , [1 0 0], rect23,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.FRA_CUL='FRANCE CULTURE';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,france_culture,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 FRA_CUL_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.FRA_CUL_CURIO=FRA_CUL_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        FRA_CUL_NEW_RATING=KbName(q_1);
                        newrating.FRA_CUL_NEW= FRA_CUL_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_FRA_CUL=timer1_end-timer1_start;
                     RT.FRA_CUL=RT_FRA_CUL;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
    
% FRANCE HISTORY
elseif IsInRect(x,y,rect24)
    Screen('FrameRect', window , [1 0 0], rect24,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.FRA_HIST='FRANCE HISTORY';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,france_history,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 FRA_HIST_rating=KbName(Q_1);
                 curiorating.FRA_HIST_CURIO=FRA_HIST_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        FRA_HIST_NEW_RATING=KbName(q_1);
                        newrating.FRA_HIST_NEW= FRA_HIST_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_FRA_HIST=timer1_end-timer1_start;
                     RT.FRA_HIST=RT_FRA_HIST;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end    
   
    
    % FRANCE ECONOMY
elseif IsInRect(x,y,rect25)
    Screen('FrameRect', window , [1 0 0], rect25,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.FRA_ECO='FRANCE ECONOMY';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,france_economy,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 FRA_ECO_rating=KbName(Q_1);
                 curiorating.FRA_ECO_CURIO=FRA_ECO_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        FRA_ECO_NEW_RATING=KbName(q_1);
                        newrating.FRA_ECO_NEW= FRA_ECO_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_FRA_ECO=timer1_end-timer1_start;
                     RT.FRA_ECO=RT_FRA_ECO;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end    
    
 % FRANCE NATURAL
elseif IsInRect(x,y,rect26)
    Screen('FrameRect', window , [1 0 0], rect26,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.FRA_NAT='FRANCE NATURAL';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,france_natural,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 FRA_NAT_rating=KbName(Q_1);
                 curiorating.FRA_NAT_CURIO=FRA_NAT_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        FRA_NAT_NEW_RATING=KbName(q_1);
                        newrating.FRA_NAT_NEW= FRA_NAT_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_FRA_NAT=timer1_end-timer1_start;
                     RT.FRA_NAT=RT_FRA_NAT
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end       
    
% FRANCE FOOD
elseif IsInRect(x,y,rect27)
    Screen('FrameRect', window , [1 0 0], rect27,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.FRA_FOOD='FRANCE food';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,france_food,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 FRA_FOOD_rating=KbName(Q_1);
                 curiorating.FRA_FOOD_CURIO=FRA_FOOD_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        FRA_FOOD_NEW_RATING=KbName(q_1);
                        newrating.FRA_FOOD_NEW= FRA_FOOD_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_FRA_FOOD=timer1_end-timer1_start;
                     RT.FRA_FOOD=RT_FRA_FOOD;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end       
    
% BRAZIL CULTURE
elseif IsInRect(x,y,rect28)
    Screen('FrameRect', window , [1 0 0], rect28,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.BRAZ_CUL='BRAZIL CULTURE';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,brazil_culture,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 BRAZ_CUL_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.BRAZ_CUL_CURIO=BRAZ_CUL_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        BRAZ_CUL_NEW_RATING=KbName(q_1);
                        newrating.BRAZ_CUL_NEW= BRAZ_CUL_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_BRAZ_CUL=timer1_end-timer1_start;
                     RT.BRAZ_CUL=RT_BRAZ_CUL;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
    % BRAZIL HISTORY
elseif IsInRect(x,y,rect29)
    Screen('FrameRect', window , [1 0 0], rect29,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.BRAZ_HIS='BRAZIL HISTORY';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,brazil_history,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 BRAZ_HIST_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.BRAZ_HIST_CURIO=BRAZ_HIST_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        BRAZ_HIST_NEW_RATING=KbName(q_1);
                        newrating.BRAZ_HIST_NEW= BRAZ_HIST_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_BRAZ_HIST=timer1_end-timer1_start;
                     RT.BRAZ_HIST=RT_BRAZ_HIST;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
 % BRAZIL ECONOMY
elseif IsInRect(x,y,rect30)
    Screen('FrameRect', window , [1 0 0], rect30,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.BRAZ_ECO='BRAZIL ECONOMY';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,brazil_economy,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 BRAZ_ECO_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.BRAZ_ECO_CURIO=BRAZ_ECO_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        BRAZ_ECO_NEW_RATING=KbName(q_1);
                        newrating.BRAZ_ECO_NEW= BRAZ_ECO_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_BRAZ_ECO=timer1_end-timer1_start;
                     RT.BRAZ_ECO=RT_BRAZ_ECO;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
    % BRAZIL NATURAL
elseif IsInRect(x,y,rect31)
    Screen('FrameRect', window , [1 0 0], rect31,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.BRAZ_NAT='BRAZIL NATURAL';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,brazil_economy,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 BRAZ_NAT_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.BRAZ_NAT_CURIO=BRAZ_NAT_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        BRAZ_NAT_NEW_RATING=KbName(q_1);
                        newrating.BRAZ_NAT_NEW= BRAZ_NAT_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_BRAZ_NAT=timer1_end-timer1_start;
                     RT.BRAZ_NAT=RT_BRAZ_NAT;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
 % BRAZIL FOOD
elseif IsInRect(x,y,rect32)
    Screen('FrameRect', window , [1 0 0], rect32,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.BRAZ_FOOD='BRAZIL FOOD';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,brazil_food,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 BRAZ_FOOD_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.BRAZ_FOOD_CURIO=BRAZ_FOOD_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        BRAZ_FOOD_NEW_RATING=KbName(q_1);
                        newrating.BRAZ_FOOD_NEW= BRAZ_FOOD_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_BRAZ_FOOD=timer1_end-timer1_start;
                     RT.BRAZ_FOOD=RT_BRAZ_FOOD;
                     
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end

    
% CHILE CULTURE
elseif IsInRect(x,y,rect33)
    Screen('FrameRect', window , [1 0 0], rect33,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.CHILE_CUL='CHILE CULTURE';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,chile_culture,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 CHILE_CUL_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.CHILE_CUL_CURIO=CHILE_CUL_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        CHILE_CUL_NEW_RATING=KbName(q_1);
                        newrating.CHILE_CUL_NEW= CHILE_CUL_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_CHILE_CUL=timer1_end-timer1_start;
                     RT.CHILE_CUL=RT_CHILE_CUL;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
% CHILE HISTORY
elseif IsInRect(x,y,rect34)
    Screen('FrameRect', window , [1 0 0], rect34,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.CHILE_HIST='CHILE HISTORY';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,chile_history,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 CHILE_HIST_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.CHILE_HIST_CURIO=CHILE_HIST_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        CHILE_HIST_NEW_RATING=KbName(q_1);
                        newrating.CHILE_HIST_NEW= CHILE_HIST_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_CHILE_HIST=timer1_end-timer1_start;
                     RT.CHILE_HIST=RT_CHILE_HIST;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
       
% CHILE ECONOMY
elseif IsInRect(x,y,rect35)
    Screen('FrameRect', window , [1 0 0], rect35,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.CHILE_ECO='CHILE ECONOMY';
        Screen('Flip',window)
        Screen ('DrawTexture',window,chile_economy,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 CHILE_ECO_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.CHILE_ECO_CURIO=CHILE_ECO_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        CHILE_ECO_NEW_RATING=KbName(q_1);
                        newrating.CHILE_ECO_NEW= CHILE_ECO_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_CHILE_ECO=timer1_end-timer1_start;
                     RT.CHILE_ECO=RT_CHILE_ECO;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
% CHILE NATURAL
elseif IsInRect(x,y,rect36)
    Screen('FrameRect', window , [1 0 0], rect36,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.CHILE_NAT='CHILE NATURAL';
        Screen('Flip',window)
        Screen ('DrawTexture',window,chile_natural,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 CHILE_NAT_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.CHILE_NAT_CURIO=CHILE_NAT_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        CHILE_NAT_NEW_RATING=KbName(q_1);
                        newrating.CHILE_NAT_NEW= CHILE_NAT_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_CHILE_NAT=timer1_end-timer1_start;
                     RT.CHILE_NAT=RT_CHILE_NAT;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
    % CHILE FOOD
elseif IsInRect(x,y,rect37)
    Screen('FrameRect', window , [1 0 0], rect37,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.CHILE_FOOD='CHILE FOOD';
        Screen('Flip',window)
        Screen ('DrawTexture',window,chile_food,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 CHILE_FOOD_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.CHILE_FOOD_CURIO=CHILE_FOOD_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        CHILE_FOOD_NEW_RATING=KbName(q_1);
                        newrating.CHILE_FOOD_NEW= CHILE_FOOD_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_CHILE_FOOD=timer1_end-timer1_start;
                     RT.CHILE_FOOD=RT_CHILE_FOOD;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
% COLOMBIA CULTURE
elseif IsInRect(x,y,rect38)
    Screen('FrameRect', window , [1 0 0], rect38,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.COLOM_CUL='COLOMBIA CULTURE';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,colombia_culture,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 COLOM_CUL_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.COLOM_CUL_CURIO=COLOM_CUL_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        COLOM_CUL_NEW_RATING=KbName(q_1);
                        newrating.COLOM_CUL_NEW= COLOM_CUL_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_COLOM_CUL=timer1_end-timer1_start;
                     RT.COLOM_CUL=RT_COLOM_CUL;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
 
% COLOMBIA HISTORY
elseif IsInRect(x,y,rect39)
    Screen('FrameRect', window , [1 0 0], rect39,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.COLOM_HIST='COLOMBIA HISTORY';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,colombia_history,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 COLOM_HIST_rating=KbName(Q_1);
                 curiorating.COLOM_HIST_CURIO=COLOM_HIST_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        COLOM_HIST_NEW_RATING=KbName(q_1);
                        newrating.COLOM_HIST_NEW= COLOM_HIST_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_COLOM_HIST=timer1_end-timer1_start;
                     RT.COLOM_HIST=RT_COLOM_HIST;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
   % COLOMBIA ECONOMY
elseif IsInRect(x,y,rect40)
    Screen('FrameRect', window , [1 0 0], rect40,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.COLOM_ECO='COLOMBIA ECONOMY';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,colombia_economy,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 COLOM_ECO_rating=KbName(Q_1);
                 curiorating.COLOM_ECO_CURIO=COLOM_ECO_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        COLOM_ECO_NEW_RATING=KbName(q_1);
                        newrating.COLOM_ECO_NEW= COLOM_ECO_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_COLOM_ECO=timer1_end-timer1_start;
                     RT.COLOM_ECO=RT_COLOM_ECO;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
    
  % COLOMBIA NATURAL
elseif IsInRect(x,y,rect41)
    Screen('FrameRect', window , [1 0 0], rect41,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.COLOM_NAT='COLOMBIA NATURAL';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,colombia_natural,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 COLOM_NAT_rating=KbName(Q_1);
                 curiorating.COLOM_NAT_CURIO=COLOM_NAT_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        COLOM_NAT_NEW_RATING=KbName(q_1);
                        newrating.COLOM_NAT_NEW= COLOM_NAT_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_COLOM_NAT=timer1_end-timer1_start;
                     RT.COLOM_NAT=RT_COLOM_NAT;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end   
    
% COLOMBIA FOOD
elseif IsInRect(x,y,rect42)
    Screen('FrameRect', window , [1 0 0], rect42,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.COLOM_FOOD='COLOMBIA FOOD';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,colombia_food,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 COLOM_FOOD_rating=KbName(Q_1);
                 curiorating.COLOM_FOOD_CURIO=COLOM_FOOD_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        COLOM_FOOD_NEW_RATING=KbName(q_1);
                        newrating.COLOM_FOOD_NEW= COLOM_FOOD_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_COLOM_FOOD=timer1_end-timer1_start;
                     RT.COLOM_FOOD=RT_COLOM_FOOD;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end       

% egypt culture
elseif IsInRect(x,y,rect43)
    Screen('FrameRect', window , [1 0 0], rect43,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.EGY_CUL='egypt CULTURE';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,egypt_culture,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 EGY_CUL_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.EGY_CUL_CURIO=EGY_CUL_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        EGY_CUL_NEW_RATING=KbName(q_1);
                        newrating.EGY_CUL_NEW= EGY_CUL_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_EGY_CUL=timer1_end-timer1_start;
                     RT.EGY_CUL=RT_EGY_CUL;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
 
    
% egypt history
elseif IsInRect(x,y,rect44)
    Screen('FrameRect', window , [1 0 0], rect44,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.EGY_HIST='egypt history';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,egypt_history,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 EGY_HIST_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.EGY_HIST_CURIO=EGY_HIST_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        EGY_HIST_NEW_RATING=KbName(q_1);
                        newrating.EGY_HIST_NEW= EGY_HIST_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_EGY_HIST=timer1_end-timer1_start;
                     RT.EGY_HIST=RT_EGY_HIST;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
 
    
% egypt ECONOMY
elseif IsInRect(x,y,rect45)
    Screen('FrameRect', window , [1 0 0], rect45,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.EGY_ECO='egypt ECONOMY';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,egypt_economy,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 EGY_ECO_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.EGY_ECO_CURIO=EGY_ECO_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        EGY_ECO_NEW_RATING=KbName(q_1);
                        newrating.EGY_ECO_NEW= EGY_ECO_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_EGY_ECO=timer1_end-timer1_start;
                     RT.EGY_ECO=RT_EGY_ECO;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end       

    
% egypt NATURAL
elseif IsInRect(x,y,rect46)
    Screen('FrameRect', window , [1 0 0], rect46,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.EGY_NAT='egypt natural';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,egypt_natural,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 EGY_NAT_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.EGY_NAT_CURIO=EGY_NAT_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        EGY_NAT_NEW_RATING=KbName(q_1);
                        newrating.EGY_NAT_NEW= EGY_NAT_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_EGY_NAT=timer1_end-timer1_start;
                     RT.EGY_NAT=RT_EGY_NAT;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end       
 
    
 % egypt food
elseif IsInRect(x,y,rect47)
    Screen('FrameRect', window , [1 0 0], rect47,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.EGY_FOOD='egypt food';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,egypt_food,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 EGY_FOOD_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.EGY_FOOD_CURIO=EGY_FOOD_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        EGY_FOOD_NEW_RATING=KbName(q_1);
                        newrating.EGY_FOOD_NEW= EGY_FOOD_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_EGY_FOOD=timer1_end-timer1_start;
                     RT.EGY_FOOD=RT_EGY_FOOD;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end       
 

    
 % nigeria culture
elseif IsInRect(x,y,rect48)
    Screen('FrameRect', window , [1 0 0], rect48,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.nig_CUL='nigeria CULTURE';
        Screen('Flip',window)
        Screen ('DrawTexture',window,nigeria_culture,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 NIG_CUL_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.NIG_CUL_CURIO=NIG_CUL_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        NIG_CUL_NEW_RATING=KbName(q_1);
                        newrating.NIG_CUL_NEW= NIG_CUL_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_NIG_CUL=timer1_end-timer1_start;
                     RT.NIG_CUL=RT_NIG_CUL;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    

% nigeria history
elseif IsInRect(x,y,rect49)
    Screen('FrameRect', window , [1 0 0], rect49,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.nig_HIST='nigeria history';
        Screen('Flip',window)
        Screen ('DrawTexture',window,nigeria_history,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 NIG_HIST_rating=KbName(Q_1);
                 curiorating.NIG_HIST_CURIO=NIG_HIST_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        NIG_HIST_NEW_RATING=KbName(q_1);
                        newrating.NIG_HIST_NEW= NIG_HIST_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_NIG_HIST=timer1_end-timer1_start;
                     RT.NIG_HIST=RT_NIG_HIST;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
% nigeria ECONOMY
elseif IsInRect(x,y,rect50)
    Screen('FrameRect', window , [1 0 0], rect50,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.nig_ECO='nigeria ECONOMY';
        Screen('Flip',window)
        Screen ('DrawTexture',window,nigeria_economy,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 NIG_ECO_rating=KbName(Q_1);
                 curiorating.NIG_ECO_CURIO=NIG_ECO_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        NIG_ECO_NEW_RATING=KbName(q_1);
                        newrating.NIG_ECO_NEW= NIG_ECO_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_ECO_HIST=timer1_end-timer1_start;
                     RT.ECO_HIST=RT_ECO_HIST;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    

% NIGERIA 
elseif IsInRect(x,y,rect51)
    Screen('FrameRect', window , [1 0 0], rect51,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.nig_ECO='nigeria natural';
        Screen('Flip',window)
        Screen ('DrawTexture',window,nigeria_natural,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 NIG_NAT_rating=KbName(Q_1);
                 curiorating.NIG_NAT_CURIO=NIG_NAT_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        NIG_NAT_NEW_RATING=KbName(q_1);
                        newrating.NIG_NAT_NEW= NIG_NAT_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_NIG_NAT=timer1_end-timer1_start;
                     RT.NIG_NAT=RT_NIG_NAT;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
    
 % NIGERIA FOOD
elseif IsInRect(x,y,rect52)
    Screen('FrameRect', window , [1 0 0], rect52,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.nig_food='nigeria food';
        Screen('Flip',window)
        Screen ('DrawTexture',window,nigeria_food,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);
                 NIG_FOOD_rating=KbName(Q_1);
                 curiorating.NIG_FOOD_CURIO=NIG_FOOD_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        NIG_FOOD_NEW_RATING=KbName(q_1);
                        newrating.NIG_FOOD_NEW= NIG_FOOD_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_NIG_FOOD=timer1_end-timer1_start;
                     RT.NIG_FOOD=RT_NIG_FOOD;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
       
 % Kenya culture
elseif IsInRect(x,y,rect53)
    Screen('FrameRect', window , [1 0 0], rect53,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.KEN_CUL='KENYA CULTURE';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,kenya_culture,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 KEN_CUL_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.KEN_CUL_CURIO=KEN_CUL_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        KEN_CUL_NEW_RATING=KbName(q_1);
                        newrating.KEN_CUL_NEW= KEN_CUL_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_KEN_CUL=timer1_end-timer1_start;
                     RT.KEN_CUL=RT_KEN_CUL;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
% Kenya history
elseif IsInRect(x,y,rect54)
    Screen('FrameRect', window , [1 0 0], rect54,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.KEN_HIST='KENYA HISTORY';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,kenya_history,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 KEN_HIST_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.KEN_HIST_CURIO=KEN_HIST_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        KEN_HIST_NEW_RATING=KbName(q_1);
                        newrating.KEN_HIST_NEW= KEN_HIST_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_KEN_HIST=timer1_end-timer1_start;
                     RT.KEN_HIST=RT_KEN_HIST;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
 
    % Kenya economy
elseif IsInRect(x,y,rect55)
    Screen('FrameRect', window , [1 0 0], rect55,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.KEN_ECO='KENYA ECONOMY';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,kenya_economy,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 KEN_ECO_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.KEN_ECO_CURIO=KEN_ECO_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        KEN_ECO_NEW_RATING=KbName(q_1);
                        newrating.KEN_ECO_NEW= KEN_ECO_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_KEN_ECO=timer1_end-timer1_start;
                     RT.KEN_ECO=RT_KEN_ECO;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
    % Kenya NATURAL
elseif IsInRect(x,y,rect56)
    Screen('FrameRect', window , [1 0 0], rect56,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.KEN_NAT='KENYA natural';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,kenya_natural,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 KEN_NAT_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.KEN_NAT_CURIO=KEN_NAT_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        KEN_NAT_NEW_RATING=KbName(q_1);
                        newrating.KEN_NAT_NEW= KEN_NAT_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_KEN_NAT=timer1_end-timer1_start;
                     RT.KEN_NAT=RT_KEN_NAT;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
    
    % Kenya FOOD
elseif IsInRect(x,y,rect57)
    Screen('FrameRect', window , [1 0 0], rect57,5)
    if any(buttons)
        timer1_start=GetSecs;
        whatclicked.KEN_FOOD='KENYA FOOD';
        europe=1;
        Screen('Flip',window)
        Screen ('DrawTexture',window,kenya_food,[])
        Screen('TextSize',window,30)
        Screen('TextFont', window, 'Arial');
        DrawFormattedText(window,'(Press "enter" to continue)',xcen-(0.2*xcen),ycen+0.9*ycen,1);
        Screen('Flip',window)
        [keyIsDown, RTkeyCode] = KbWait;
        r_1=find(RTkeyCode);
        enter_1=KbName(r_1);
        if keyIsDown
             Q1=1;
             while Q1==1
                 Screen('TextFont', window, 'Arial');
                 line1 = 'Rate how curious you are to learn about this topic?';
                 line2 = '\n(Press any number from 1 to 5 to rate)';
%                  line3 = 'Press "Backspace" to continue';
                 Screen('TextSize',window,60)
                 DrawFormattedText(window, line1,...
                     xcen-(0.6*xcen),ycen);
                 DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
%                  DrawFormattedText(window, line3,xcen-(0.4*xcen),ycen+0.75*ycen);
                 
                 Screen('Flip',window)
                 WaitSecs(1)
                 [keyIsDown, RTkeyCode] = KbWait;
                 Q_1=find(RTkeyCode);%this should be the code for the key pressed
                 KEN_FOOD_rating=KbName(Q_1);%Figure out what key was pressed
                 curiorating.KEN_FOOD_CURIO=KEN_FOOD_rating;
                 if keyIsDown
                        WaitSecs(0.5)
                        Screen('TextFont', window, 'Arial');
                        line1 = 'How new is this information for you?';
                        line2 = '\n(Press any number from 1 to 5 to rate)';
                        Screen('TextSize',window,60)
                        DrawFormattedText(window, line1,...
                            xcen-(0.45*xcen),ycen);
                        DrawFormattedText(window, line2,xcen-(0.5*xcen),ycen);
                        Screen('TextSize',window,30) 
                        Screen('Flip',window)
                        timer1_end=0;
                        [keyIsDown, RTkeyCode] = KbWait;
                        q_1=find(RTkeyCode);
                        KEN_FOOD_NEW_RATING=KbName(q_1);
                        newrating.KEN_FOOD_NEW= KEN_FOOD_NEW_RATING;
                     if keyIsDown
                         timer1_end=GetSecs;
                         Q1=0;
                     end
                     RT_KEN_FOOD=timer1_end-timer1_start;
                     RT.KEN_FOOD=RT_KEN_FOOD;
                 end
             end
             writetable(struct2table(curiorating), outputfile,'sheet',1);
             writetable(struct2table(newrating), outputfile,'sheet',2);
             writetable(struct2table(RT),outputfile,'sheet',3);
       end
    end
    
%EXIT BUTTON
elseif IsInRect(x,y,rect59)
    Screen('FrameRect', window , [1 0 0], rect59,6)
    if any(buttons)
          frontpage=2;
           Screen('Flip',window)
           Screen('TextSize',window,100)
           Screen('DrawText',window,'Thank You',xcen-(xcen/4),ycen)
           Screen('Flip',window)
           WaitSecs(1)
           Screen('CloseAll')
   end
   



end

Screen('Flip',window);

end
           
   
