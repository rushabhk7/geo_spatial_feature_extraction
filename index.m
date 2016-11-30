function [train,test] = index(num)


set_size = num;

barren_data = xlsread('train_data.xls',1,'C3:J134');
temp = xlsread('train_data.xls',1,'A3:B134');

traindat = [barren_data];

barren_pos = [temp(:,2) temp(:,1)];
barren_pos = barren_pos + 1;

[x,y] = size(barren_data);

known = [ones(x,1)];
for i = 1:x
   for j = 1:y
        barren_data(i,j) = fix(barren_data(i,j)/set_size);
            
   end
end

barren_datat = xlsread('test_data.xls',1,'C3:J61');
temp = xlsread('test_data.xls',1,'A3:B61');

testdat = [ barren_datat];

barren_post = [temp(:,2) temp(:,1)];
barren_post = barren_post + 1;

[x,y] = size(barren_datat);

knownt = [ones(x,1)];
for i = 1:x
   for j = 1:y
        barren_datat(i,j) = fix(barren_datat(i,j)/set_size);
            
   end
end
% --------------------------------------------------------------------------------

rocky_data = xlsread('train_data.xls',1,'C135:I347');
temp = xlsread('train_data.xls',1,'A135:B347');

traindat = [traindat; rocky_data];

rocky_pos = [temp(:,2) temp(:,1)];
rocky_pos = rocky_pos + 1;

[x,y] = size(rocky_data);

known = [known;ones(x,1)+1];
for i = 1:x
   for j = 1:y
        rocky_data(i,j) = fix(rocky_data(i,j)/set_size);
            
   end
end

rocky_datat = xlsread('test_data.xls',1,'C62:I136');
temp = xlsread('test_data.xls',1,'A62:B136');

testdat = [testdat; rocky_datat];

rocky_post = [temp(:,2) temp(:,1)];
rocky_post = rocky_post + 1;

[x,y] = size(rocky_datat);
knownt = [knownt;ones(x,1)+1];
for i = 1:x
   for j = 1:y
        rocky_datat(i,j) = fix(rocky_datat(i,j)/set_size);
            
   end
end
% --------------------------------------------------------------------------------
urban_data = xlsread('train_data.xls',1,'C348:I636');
temp = xlsread('train_data.xls',1,'A348:B636');

traindat = [traindat; urban_data];

urban_pos = [temp(:,2) temp(:,1)];
urban_pos = urban_pos + 1;

[x,y] = size(urban_data);
known = [known;ones(x,1)+2];

for i = 1:x
   for j = 1:y
        urban_data(i,j) = fix(urban_data(i,j)/set_size);
            
   end
end


urban_datat = xlsread('test_data.xls',1,'C137:I264');
temp = xlsread('test_data.xls',1,'A137:B264');

testdat = [testdat; urban_datat];

urban_post = [temp(:,2) temp(:,1)];
urban_post = urban_post + 1;

[x,y] = size(urban_datat);
knownt = [knownt;ones(x,1)+2];

for i = 1:x
   for j = 1:y
        urban_datat(i,j) = fix(urban_datat(i,j)/set_size);
            
   end
end

% --------------------------------------------------------------------------------
veg_data = xlsread('train_data.xls',1,'C637:I874');
temp = xlsread('train_data.xls',1,'A637:B874');

traindat = [traindat; veg_data];

veg_pos = [temp(:,2) temp(:,1)];
veg_pos = veg_pos + 1;

[x,y] = size(veg_data);
known = [known;ones(x,1)+3];
for i = 1:x
   for j = 1:y
        veg_data(i,j) = fix(veg_data(i,j)/set_size);
            
   end
end


veg_datat = xlsread('test_data.xls',1,'C265:I355');
temp = xlsread('test_data.xls',1,'A265:B355');

testdat = [testdat; veg_datat];

veg_post = [temp(:,2) temp(:,1)];
veg_post = veg_post + 1;

[x,y] = size(veg_datat);
knownt = [knownt;ones(x,1)+3];

for i = 1:x
   for j = 1:y
        veg_datat(i,j) = fix(veg_datat(i,j)/set_size);
            
   end
end
% --------------------------------------------------------------------------------
water_data = xlsread('train_data.xls',1,'C875:I1025');
temp = xlsread('train_data.xls',1,'A875:B1025');

traindat = [traindat; water_data];

water_pos = [temp(:,2) temp(:,1)];
water_pos = water_pos + 1;

[x,y] = size(water_data);
known = [known;ones(x,1)+4];
for i = 1:x
   for j = 1:y
        water_data(i,j) = fix(water_data(i,j)/set_size);
            
   end
end

water_datat = xlsread('test_data.xls',1,'C356:I410');
temp = xlsread('test_data.xls',1,'A356:B410');

testdat = [testdat; water_datat];

water_post = [temp(:,2) temp(:,1)];
water_post = water_post + 1;

[x,y] = size(water_datat);
knownt = [knownt;ones(x,1)+4];
for i = 1:x
   for j = 1:y
        water_datat(i,j) = fix(water_datat(i,j)/set_size);
            
   end
end







% img = zeros(r,c,7);
% sol = zeros(r,c);
% img(:,:,1) = imread('dataset alwar/7-band images/images/red.tif');
% img(:,:,2) = imread('dataset alwar/7-band images/images/green.tif');
% img(:,:,3) = imread('dataset alwar/7-band images/images/NIR.tif');
% img(:,:,4) = imread('dataset alwar/7-band images/images/MIR.tif');
% img(:,:,5) = imread('dataset alwar/7-band images/images/Radarsat-1.tif');
% img(:,:,6) = imread('dataset alwar/7-band images/images/Radarsat-2.tif');
% img(:,:,7) = imread('dataset alwar/7-band images/images/DEM.tif');


% for i = 1:r
%    for j = 1:c
%        for k = 1:7
%             img(i,j,k) = fix(img(i,j,k)/set_size);
%        end     
%    end
% end

counter = zeros(5,7,fix(255/num)+1);
counter(1,:,:) = count_them(barren_data,num);
counter(2,:,:) = count_them(rocky_data,num);
counter(3,:,:) = count_them(urban_data,num);
counter(4,:,:) = count_them(veg_data,num);
counter(5,:,:) = count_them(water_data,num);



[x,~] = size(traindat);

pred = zeros(x,1);

for i = 1:x
        pred(i) = nbc(counter,traindat(i,:),num);
    
end

% imshow(sol,[]);




error_mat = confusionmat(known,pred);

user = zeros(5,1);
producer = zeros(5,1);

for i = 1:5
    user(i,1) = sum(error_mat(i,:));
end

for i = 1:5
    producer(i,1) = sum(error_mat(:,i));
end
fact = 0;
for i = 1:5
    fact = fact + user(i,1)*producer(i,1);
end

kappa = ((1025)*trace(error_mat) - fact)/((1023*1023) - fact);
train = kappa;
% fprintf('Mass_num = %d Charge_num = %d\n',mass_num,charge_num);
% fprintf('%f\n',kappa);




[x,~] = size(testdat);

predt = zeros(x,1);

for i = 1:x
        predt(i) = nbc(counter,testdat(i,:),num);
    
end

% imshow(sol,[]);




error_mat = confusionmat(knownt,predt);

user = zeros(5,1);
producer = zeros(5,1);

for i = 1:5
    user(i,1) = sum(error_mat(i,:));
end

for i = 1:5
    producer(i,1) = sum(error_mat(:,i));
end
fact = 0;
for i = 1:5
    fact = fact + user(i,1)*producer(i,1);
end

kappa = ((408)*trace(error_mat) - fact)/((408*408) - fact);
test = kappa;
% fprintf('Mass_num = %d Charge_num = %d\n',mass_num,charge_num);
% fprintf('%f\n',kappa);










end