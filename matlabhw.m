Matlab Code:
[x,fs]=audioread('speech.wav');
        sound(x,fs);
     x1=x(1500:3000);  x2=x(8000:10000);
        sound(x1,fs); 
        sound(x2,fs);
        figure(1); plot(x1); figure(2); plot(x2);
        xx1=x1(601:780);  xx2=x2(601:780);
     figure(3); plot(xx1); figure(4); plot(xx2);
     p=[20,40,60,80,100,120,140,160];
    i=1;
    z=1;
    collectorxx1=[];
    while i < length(p)+1
        pt=p(i);
        
        total=0;
        z=0;
        while z < (180-pt)
            t=abs(i-pt);
            diff=xx1(i)-xx1(t);
          
            
            total=total+abs(diff);
            
            z=z+1;
        end 
        collectorxx1(i)=total*(1/(180-pt));
        i=i+1;
        
        
    end
    
        i=1;
    z=1;
    collectorxx2=[];
    while i < length(p)+1
        pt=p(i);
        
        total=0;
        z=0;
        while z < (180-pt)
            t=abs(i-pt);
            diff=xx2(i)-xx2(t);
            total=total+abs(diff);
            
            z=z+1;
        end 
        collectorxx2(i)=total*(1/(180-pt));
        i=i+1;
        
        
    end
figure(5);plot(p,collectorxx1);
figure(6); plot(p,collectorxx2)
