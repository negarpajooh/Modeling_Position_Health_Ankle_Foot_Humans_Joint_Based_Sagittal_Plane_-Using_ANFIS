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
shoe1(1,:)=[];shoe1(:,1)=[];
shoe2(1,:)=[];shoe2(:,1)=[];
shoe3(1,:)=[];shoe3(:,1)=[];
brace1(1,:)=[];brace1(:,1)=[];
brace2(1,:)=[];brace2(:,1)=[];
brace3(1,:)=[];brace3(:,1)=[];
modification1(1,:)=[];modification1(:,1)=[];
modification2(1,:)=[];modification2(:,1)=[];
modification3(1,:)=[];modification3(:,1)=[];
%% brace 1
brace1.x.Lteo=brace1(:,1);
brace1.y.Lteo=brace1(:,2);
brace1.z.Lteo=brace1(:,3);
brace1.x.Rteo=brace1(:,4);
brace1.y.Rteo=brace1(:,5);
brace1.z.Rteo=brace1(:,6);
brace1.x.Lank=brace1(:,7);
brace1.y.Lank=brace1(:,8);
brace1.z.Lank=brace1(:,9);
brace1.x.Rank=brace1(:,10);
brace1.y.Rank=brace1(:,11);
brace1.z.Rank=brace1(:,12);
%% brace 2
brace2.x.Lteo=brace2(:,1);
brace2.y.Lteo=brace2(:,2);
brace2.z.Lteo=brace2(:,3);
brace2.x.Rteo=brace2(:,4);
brace2.y.Rteo=brace2(:,5);
brace2.z.Rteo=brace2(:,6);
brace2.x.Lank=brace2(:,7);
brace2.y.Lank=brace2(:,8);
brace2.z.Lank=brace2(:,9);
brace2.x.Rank=brace2(:,10);
brace2.y.Rank=brace2(:,11);
brace2.z.Rank=brace2(:,12);
%% brace 3
brace3.x.Lteo=brace3(:,1);
brace3.y.Lteo=brace3(:,2);
brace3.z.Lteo=brace3(:,3);
brace3.x.Rteo=brace3(:,4);
brace3.y.Rteo=brace3(:,5);
brace3.z.Rteo=brace3(:,6);
brace3.x.Lank=brace3(:,7);
brace3.y.Lank=brace3(:,8);
brace3.z.Lank=brace3(:,9);
brace3.x.Rank=brace3(:,10);
brace3.y.Rank=brace3(:,11);
brace3.z.Rank=brace3(:,12);
%% shoe 1
shoe1.x.Lteo=shoe1(:,1);
shoe1.y.Lteo=shoe1(:,2);
shoe1.z.Lteo=shoe1(:,3);
shoe1.x.Rteo=shoe1(:,4);
shoe1.y.Rteo=shoe1(:,5);
shoe1.z.Rteo=shoe1(:,6);
shoe1.x.Lank=shoe1(:,7);
shoe1.y.Lank=shoe1(:,8);
shoe1.z.Lank=shoe1(:,9);
shoe1.x.Rank=shoe1(:,10);
shoe1.y.Rank=shoe1(:,11);
shoe1.z.Rank=shoe1(:,12);
%% shoe 2
shoe2.x.Lteo=shoe2(:,1);
shoe2.y.Lteo=shoe2(:,2);
shoe2.z.Lteo=shoe2(:,3);
shoe2.x.Rteo=shoe2(:,4);
shoe2.y.Rteo=shoe2(:,5);
shoe2.z.Rteo=shoe2(:,6);
shoe2.x.Lank=shoe2(:,7);
shoe2.y.Lank=shoe2(:,8);
shoe2.z.Lank=shoe2(:,9);
shoe2.x.Rank=shoe2(:,10);
shoe2.y.Rank=shoe2(:,11);
shoe2.z.Rank=shoe2(:,12);
%% shoe 3
shoe3.x.Lteo=shoe3(:,1);
shoe3.y.Lteo=shoe3(:,2);
shoe3.z.Lteo=shoe3(:,3);
shoe3.x.Rteo=shoe3(:,4);
shoe3.y.Rteo=shoe3(:,5);
shoe3.z.Rteo=shoe3(:,6);
shoe3.x.Lank=shoe3(:,7);
shoe3.y.Lank=shoe3(:,8);
shoe3.z.Lank=shoe3(:,9);
shoe3.x.Rank=shoe3(:,10);
shoe3.y.Rank=shoe3(:,11);
shoe3.z.Rank=shoe3(:,12);
%% modification 1
modification1.x.Lteo=modification1(:,1);
modification1.y.Lteo=modification1(:,2);
modification1.z.Lteo=modification1(:,3);
modification1.x.Rteo=modification1(:,4);
modification1.y.Rteo=modification1(:,5);
modification1.z.Rteo=modification1(:,6);
modification1.x.Lank=modification1(:,7);
modification1.y.Lank=modification1(:,8);
modification1.z.Lank=modification1(:,9);
modification1.x.Rank=modification1(:,10);
modification1.y.Rank=modification1(:,11);
modification1.z.Rank=modification1(:,12);
%% modification 2
modification2.x.Lteo=modification2(:,1);
modification2.y.Lteo=modification2(:,2);
modification2.z.Lteo=modification2(:,3);
modification2.x.Rteo=modification2(:,4);
modification2.y.Rteo=modification2(:,5);
modification2.z.Rteo=modification2(:,6);
modification2.x.Lank=modification2(:,7);
modification2.y.Lank=modification2(:,8);
modification2.z.Lank=modification2(:,9);
modification2.x.Rank=modification2(:,10);
modification2.y.Rank=modification2(:,11);
modification2.z.Rank=modification2(:,12);
%% modification 3
modification3.x.Lteo=modification3(:,1);
modification3.y.Lteo=modification3(:,2);
modification3.z.Lteo=modification3(:,3);
modification3.x.Rteo=modification3(:,4);
modification3.y.Rteo=modification3(:,5);
modification3.z.Rteo=modification3(:,6);
modification3.x.Lank=modification3(:,7);
modification3.y.Lank=modification3(:,8);
modification3.z.Lank=modification3(:,9);
modification3.x.Rank=modification3(:,10);
modification3.y.Rank=modification3(:,11);
modification3.z.Rank=modification3(:,12);
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
X=
Y=
Z=
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
% for j=1:nyi
%     for i=2:nxi-1
% a_Foot(i,j)=
% a_Gz(i,j)=
% a_Gy(i,j)=
%     end
% end
%% Inertia
% for j=1:nyi
%     for i=2:nxi-1
% R_FootAnkle(i,j)=
% I_FootAnkle(i,j)=
%     end
% end
%% Dynamic
for j=1:nyi
    for i=2:nxi-1
Fz(i,j)=m*a_Gz(i,j);
Fy(i,j)=m*a_Gy(i,j);
M_A(i,j)=
    end
end
%% Input + Output 
Data=...
    [questions,Vx_Foot,Vy_Foot,Vz_Foot,a_Foot,a_Gz,a_Gy,R_FootAnkle,I_FootAnkle,Fz,Fy,M_A];
%% anfis
[Nx,Ny]=size(Data);
trainNumber=0.7*Nx;
trainNumber=round(trainNumber);
testNumber=Nx-trainNumber;
TrainInputs=Data(1:trainNumber,1:Ny-1);
TrainTargets=Data(1:trainNumber,Ny);
TestInputs=Data(testNumber:end,1:Ny-1);
TestTargets=Data(testNumber:end,Ny);
x1=TrainInputs;
y1=TrainTargets;
x2=TestInputs;
y2=TestTargets;
xy1=[x1,y1];
xy2=[x2,y2];
anfisedit

