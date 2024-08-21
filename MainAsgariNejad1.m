clc;
clear;
close all;
%% load
shoe1=xlsread('shoe1.xlsx');
shoe2=xlsread('shoe2.xlsx');
shoe3=xlsread('shoe3.xlsx');
brace1=xlsread('brace1.xlsx');
brace2=xlsread('brace2.xlsx');
brace3=xlsread('brace3.xlsx');
modification1=xlsread('modification1.xlsx');
modification2=xlsread('modification2.xlsx');
modification3=xlsread('modification3.xlsx');
%%

%% Ankle
x_Ankle.brace1=brace1
y_Ankle.brace1=brace1
z_Ankle.brace1=brace1
%
x_Ankle.brace2=brace2
y_Ankle.brace2=brace2
z_Ankle.brace2=brace2
x_Ankle.brace3=brace3
y_Ankle.brace3=brace3
z_Ankle.brace3=brace3
%
x_Ankle.shoe1=shoe1
y_Ankle.shoe1=shoe1
z_Ankle.shoe1=shoe1
x_Ankle.shoe2=shoe2
y_Ankle.shoe2=shoe2
z_Ankle.shoe2=shoe2
x_Ankle.shoe3=shoe3
y_Ankle.shoe3=shoe3
z_Ankle.shoe3=shoe3
%
x_Ankle.modification1=modification1
y_Ankle.modification1=modification1
z_Ankle.modification1=modification1
x_Ankle.modification2=modification2
y_Ankle.modification2=modification2
z_Ankle.modification2=modification2
x_Ankle.modification3=modification3
y_Ankle.modification3=modification3
z_Ankle.modification3=modification3
%% Toe
x_Toe.brace1=brace1
y_Toe.brace1=brace1
z_Toe.brace1=brace1
x_Toe.brace2=brace2
y_Toe.brace2=brace2
z_Toe.brace2=brace2
x_Toe.brace3=brace3
y_Toe.brace3=brace3
z_Toe.brace3=brace3
%
x_Toe.shoe1=shoe1
y_Toe.shoe1=shoe1
z_Toe.shoe1=shoe1
x_Toe.shoe2=shoe2
y_Toe.shoe2=shoe2
z_Toe.shoe2=shoe2
x_Toe.shoe3=shoe3
y_Toe.shoe3=shoe3
z_Toe.shoe3=shoe3
%
x_Toe.modification1=modification1
y_Toe.modification1=modification1
z_Toe.modification1=modification1
x_Toe.modification2=modification2
y_Toe.modification2=modification2
z_Toe.modification2=modification2
x_Toe.modification3=modification3
y_Toe.modification3=modification3
z_Toe.modification3=modification3
%% MET5
x_MET5.brace1=brace1
y_MET5.brace1=brace1
z_MET5.brace1=brace1
x_MET5.brace2=brace2
y_MET5.brace2=brace2
z_MET5.brace2=brace2
x_MET5.brace3=brace3
y_MET5.brace3=brace3
z_MET5.brace3=brace3
%
x_MET5.shoe1=shoe1
y_MET5.shoe1=shoe1
z_MET5.shoe1=shoe1
x_MET5.shoe2=shoe2
y_MET5.shoe2=shoe2
z_MET5.shoe2=shoe2
x_MET5.shoe3=shoe3
y_MET5.shoe3=shoe3
z_MET5.shoe3=shoe3
%
x_MET5.modification1=modification1
y_MET5.modification1=modification1
z_MET5.modification1=modification1
x_MET5.modification2=modification2
y_MET5.modification2=modification2
z_MET5.modification2=modification2
x_MET5.modification3=modification3
y_MET5.modification3=modification3
z_MET5.modification3=modification3
%% feo
x_feo.brace1=brace1
y_feo.brace1=brace1
z_feo.brace1=brace1
x_feo.brace2=brace2
y_feo.brace2=brace2
z_feo.brace2=brace2
x_feo.brace3=brace3
y_feo.brace3=brace3
z_feo.brace3=brace3
%
x_feo.shoe1=shoe1
y_feo.shoe1=shoe1
z_feo.shoe1=shoe1
x_feo.shoe2=shoe2
y_feo.shoe2=shoe2
z_feo.shoe2=shoe2
x_feo.shoe3=shoe3
y_feo.shoe3=shoe3
z_feo.shoe3=shoe3
%
x_feo.modification1=modification1
y_feo.modification1=modification1
z_feo.modification1=modification1
x_feo.modification2=modification2
y_feo.modification2=modification2
z_feo.modification2=modification2
x_feo.modification3=modification3
y_feo.modification3=modification3
z_feo.modification3=modification3
%% Knee
x_Knee.brace1=brace1
y_Knee.brace1=brace1
z_Knee.brace1=brace1
x_Knee.brace2=brace2
y_Knee.brace2=brace2
z_Knee.brace2=brace2
x_Knee.brace3=brace3
y_Knee.brace3=brace3
z_Knee.brace3=brace3
%
x_Knee.shoe1=shoe1
y_Knee.shoe1=shoe1
z_Knee.shoe1=shoe1
x_Knee.shoe2=shoe2
y_Knee.shoe2=shoe2
z_Knee.shoe2=shoe2
x_Knee.shoe3=shoe3
y_Knee.shoe3=shoe3
z_Knee.shoe3=shoe3
%
x_Knee.modification1=modification1
y_Knee.modification1=modification1
z_Knee.modification1=modification1
x_Knee.modification2=modification2
y_Knee.modification2=modification2
z_Knee.modification2=modification2
x_Knee.modification3=modification3
y_Knee.modification3=modification3
z_Knee.modification3=modification3
%
%% TIO
x_TIO.brace1=brace1
y_TIO.brace1=brace1
z_TIO.brace1=brace1
x_TIO.brace2=brace2
y_TIO.brace2=brace2
z_TIO.brace2=brace2
x_TIO.brace3=brace3
y_TIO.brace3=brace3
z_TIO.brace3=brace3
%
x_TIO.shoe1=shoe1
y_TIO.shoe1=shoe1
z_TIO.shoe1=shoe1
x_TIO.shoe2=shoe2
y_TIO.shoe2=shoe2
z_TIO.shoe2=shoe2
x_TIO.shoe3=shoe3
y_TIO.shoe3=shoe3
z_TIO.shoe3=shoe3
%
x_TIO.modification1=modification1
y_TIO.modification1=modification1
z_TIO.modification1=modification1
x_TIO.modification2=modification2
y_TIO.modification2=modification2
z_TIO.modification2=modification2
x_TIO.modification3=modification3
y_TIO.modification3=modification3
z_TIO.modification3=modification3
%
%% Shoe-Brace-Modification Selection
questions=questdlg('Which one?','questions','Shoe','Brace','Modification','Shoe');
switch questions
case 'Shoe'
questions=questdlg('Which one?','questions','Shoe1','Shoe2','Shoe3','Shoe1');  
if questions=='Shoe1'
    questions=shoe1;
elseif questions=='Shoe2'
    questions=shoe2;
else
    questions=shoe3;
end   
    case 'Brace'
questions=questdlg('Which one?','questions','Brace1','Brace2','Brace3','Brace1');        
if questions=='Brace1'
    questions=brace1;
elseif questions=='Brace2'
    questions=brace2;
else
    questions=brace3;
end    
    case  'Modification'
questions=questdlg('Which one?','questions','Modification1','Modification2','Modification3','Modification1');  
if questions=='Modification1'
    questions=modification1;
elseif questions=='Modification2'
    questions=modification2;
else
    questions=modification3;
end
end
%% Kinematic
dt=0.01;
m=1;
[nxi,nyi]=size(questions);
for j=1:nyi
    for i=2:nxi-1
     dz=(questions(i+1,j)-questions(i-1,j));
     dx=(questions(i+1,j)-questions(i-1,j));
     dy=(questions(i+1,j)-questions(i-1,j));
     teta_Foot(i,j)=tan(dz/dx);
     omega_Foot(i,j)=diff(teta_Foot(i,j))/dt;
     alfa_Foot(i,j)=diff(teta_Foot(i,j))/dt;
     teta_FootPI(i,j)=(180/pi)*teta_Foot(i,j);           
    end
end
for j=1:nyi
    for i=2:nxi-1
Vx_Foot(i,j)=(0.005*(questions(i+1,j)-questions(i-1,j)))/dt;
Vy_Foot(i,j)=(0.005*(questions(i+1,j)-questions(i-1,j)))/dt;
Vz_Foot(i,j)=(0.005*(questions(i+1,j)-questions(i-1,j)))/dt;
    end
end
for j=1:nyi
    for i=2:nxi-1
a_Foot(i,j)=
a_Gz(i,j)=
a_Gy(i,j)=
    end
end
for j=1:nyi
    for i=2:nxi-1
R_FootAnkle(i,j)=
I_FootAnkle(i,j)=
    end
end
for j=1:nyi
    for i=2:nxi-1
%% Dynamic
Fz(i,j)=m*a_Gz(i,j);
Fy(i,j)=m*a_Gy(i,j);
M_A(i,j)=
    end
end
%% Input + Output 
shoe1=...
    [shoe1,Vx_Foot,Vy_Foot,Vz_Foot,a_Foot,a_Gz,a_Gy,R_FootAnkle,I_FootAnkle,Fz,Fy,M_A];
shoe2=...
    [shoe2,];
shoe3=...
    [shoe3,];
brace1=...
    [brace1,];
brace2=...
    [brace2,];
brace3=...
    [brace3,];
modification1=...
    [modification1,];
modification2=...
    [modification2,];
modification3=...
    [modification3,];


%% questions
[InputMF,OutputMF,OptimizationMethod,InputType,fistype]=questions()
global InputMF OutputMF OptimizationMethod InputType fistype
%% ANFIS
for i=1:3
   if i==1
   % shoe    
    [fis,inputs,OutPut,InputType]=ANFISmethod(shoe1);
    Result.shoe1.fis=fis;
    Result.shoe1.inputs=inputs;
    Result.shoe1.OutPut=OutPut;
    Result.shoe1.InputType=InputType;
    save ('ResultShoe1')
    %
    [fis,inputs,OutPut,InputType]=ANFISmethod(shoe2);
    Result.shoe2.fis=fis;
    Result.shoe2.inputs=inputs;
    Result.shoe2.OutPut=OutPut;
    Result.shoe2.InputType=InputType;
    save ('ResultShoe2')
    %
    [fis,inputs,OutPut,InputType]=ANFISmethod(shoe3);
    Result.shoe3.fis=fis;
    Result.shoe3.inputs=inputs;
    Result.shoe3.OutPut=OutPut;
    Result.shoe3.InputType=InputType;
    save ('ResultShoe3')
   elseif i==2
    % brace  
    [fis,inputs,OutPut,InputType]=ANFISmethod(brace1);
    Result.brace1.fis=fis;
    Result.brace1.inputs=inputs;
    Result.brace1.OutPut=OutPut;
    Result.brace1.InputType=InputType;
    save ('ResultShoe1')
    %
    [fis,inputs,OutPut,InputType]=ANFISmethod(brace2);
    Result.brace2.fis=fis;
    Result.brace2.inputs=inputs;
    Result.brace2.OutPut=OutPut;
    Result.brace2.InputType=InputType;
    save ('ResultShoe2')
    %
    [fis,inputs,OutPut,InputType]=ANFISmethod(brace3);
    Result.brace3.fis=fis;
    Result.brace3.inputs=inputs;
    Result.brace3.OutPut=OutPut;
    Result.brace3.InputType=InputType;
    save ('ResultShoe3')
   else
   % modification
    [fis,inputs,OutPut,InputType]=ANFISmethod(modification1);
    Result.modification1.fis=fis;
    Result.modification1.inputs=inputs;
    Result.modification1.OutPut=OutPut;
    Result.modification1.InputType=InputType;
    save ('ResultModification1')
    %
    [fis,inputs,OutPut,InputType]=ANFISmethod(modification2);
    Result.modification2.fis=fis;
    Result.modification2.inputs=inputs;
    Result.modification2.OutPut=OutPut;
    Result.modificatione2.InputType=InputType;
    save ('ResultModification2')
    %
    [fis,inputs,OutPut,InputType]=ANFISmethod(modification3);
    Result.modification3.fis=fis;
    Result.modification3.inputs=inputs;
    Result.modification3.OutPut=OutPut;
    Result.modification3.InputType=InputType;
    save ('ResultModification3')
   
end
end
%% Result

