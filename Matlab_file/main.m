
function f = main()
fprintf('Enter your skill levels? \n');
x1 = input('Maths Skills(1-10)? ');
x2 = input('Coding Skills(1-10)? ');
x3 = input('Networking Skills(1-10)? ');
x4 = input('Embedded Sys Skills(1-10)? ');
x5= input('Database Skills(1-10)? ');

fis1=readfis('crypto_network_secu.fis');
fis2=readfis('Emb_process.fis');
fis3=readfis('ML.fis');
fis4=readfis('clould_computing.fis');
fis5=readfis('IOT.fis');
out1=evalfis([x1,x2,x3,x4,x5],fis1);
out2=evalfis([x1,x2,x3,x4,x5],fis2);
out3=evalfis([x1,x2,x3,x4,x5],fis3);
out4=evalfis([x1,x2,x3,x4,x5],fis4);
out5=evalfis([x1,x2,x3,x4,x5],fis5);

subject(1).name = "Cryptography";
subject(1).percentage = out1;
          
            
subject(2).name = "Machine Learning";
subject(2).percentage = out2;
            
subject(3).name = "Embedded Design";
subject(3).percentage = out3;
            
subject(4).name = "Cloud Computing";
subject(4).percentage = out4;
            
subject(5).name = "IOT";
subject(5).percentage = out5;
b={};
fprintf('\nPercentage of Subject Skills\n');
fprintf('Cryptography  %7.3f\n',out1);
fprintf('Machine Learning  %7.3f\n',out2);
fprintf('Embedded Design  %7.3f\n',out3);
fprintf('Cloud Computing  %7.3f\n',out4);
fprintf('IOT  %7.3f\n',out5)

for i = 1:5
   percentages(i) = (subject(i).percentage); 
end
fprintf('\nRecommended Subjects\n');            
[M,Idx] = max(percentages);
subName = {};
name1 = " ";
for i = 1:5 
  if percentages(i) == M
      fprintf('%s \n',subject(i).name);
  else
      subName{i,1} = char(sprintf(name1));
  end
end

end