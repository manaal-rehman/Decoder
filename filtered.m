function output = filtered(y)
fs=8000;
N=5000;
Hd1=lowpass_filter;
x1=filter(Hd1,y);
x1 = fft(x1,N);
[~,m1] = max(abs(x1));
m1=m1*1.6;
% disp('max1')
% disp(m1)

Hd2=highpass_filter;
x2=filter(Hd2,y);
x2 = fft(x2,N);
[~,m2] = max(abs(x2));
m2=m2*1.6;
% disp('max2')
% disp(m2)

%  L=[697,770,852,941];
%  H=[1209,1336,1477];

    if ((m1>692) && (m1<720))
       m1=697;
         elseif ((m1>765) && (m1<800))
            m1=770;
              elseif ((m1>847) && (m1<880))
                 m1=852;
                   elseif ((m1>936) && (m1<960))
                      m1=941;
    end
%     disp(m1)
                  
    if ((m2>1204) && (m2<1240))
       m2=1209;
         elseif ((m2>1331) && (m2<1360))
            m2=1336;
              elseif ((m2>1472) && (m2<2500))
                 m2=1477;
    end      
%     disp(m2)

j=m1; k=m2;
   if j<=697 & k<=1209;
   key = '1';
   elseif j<=697 & k<=1336;
      key = '2';
   elseif j<=697 & k<=1477;
      key = '3';
   elseif j<=770 & k<=1209;   
      key = '4';
   elseif j<=770 & k<=1336;
      key = '5';
   elseif j<=770 & k<=1477;
      key = '6';
   elseif j<=852 & k<=1209;
      key = '7';
   elseif j<=852 & k<=1336;
      key = '8';
   elseif j<=852 & k<=1477;
      key = '9';
   elseif j<=941 & k<=1209;   
      key = '*';
   elseif j<=941 & k<=1336;
      key = '0';
   elseif j<=941 & k<=1477;  
      key = '#';
   else
       key= 'very noisy signal' ;
   end
output=key;
end       
