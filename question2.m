
exampleImage=[0 0 0 1 0 0 0 0 0 0;
              0 1 1 1 0 0 0 1 0 0;
              0 1 1 1 1 1 1 0 0 0;
              0 0 0 1 1 1 1 0 0 0;
              0 0 0 1 0 0 1 0 0 0;
              0 0 0 1 0 0 1 0 0 0;
              1 1 0 0 0 0 0 0 1 1;
              0 0 1 1 1 1 1 1 0 0;
              0 0 1 1 1 1 1 1 0 0;
              0 0 0 0 0 0 0 0 0 0;];
 fprintf('10 by 10 original image');
 disp(exampleImage);         
          
 [result1, lable1] = myConnComp(exampleImage, 4);
 fprintf('For 4-adjacency:number of conneted components:');
 disp(result1); 
 disp(lable1);
 
 
 