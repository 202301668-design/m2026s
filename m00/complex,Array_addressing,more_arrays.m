%[text] # 복소수 배열/complex Arrays
%[text] 허수 = i
%[text] i=sqrt(-1)
a=2i+1 %[output:0d447953]
aR=real(a),aimag=imag(a) %[output:3aed3c12] %[output:34c741c5]
%[text] 
b=[1 2i 2+1i+-1] %[output:64ff08af]
b1=b(1),b2=b(2) %[output:295377b0] %[output:3bf941dc]
%[text] 
b2^2 %[output:3ac11d0c]
%%
%[text] # Array Addressing
v=10:-2:0 %[output:2f729757]
%[text] 
v(1:2) ,v(end-1:end) %[output:156a6f58] %[output:79b09251]
%[text] 
u=v([2 4 1 3 6 5]) %[output:10cc6ccc]

%[text] 
M=magic(5) %[output:91dedf49]
%[text] 
m=M(end,:) %[output:5fe2ab69]
%[text] 
w=M(:,3)  %[output:5ab12831]
d=M(end-1:end ,[2 4]) %[output:33689f73]
%[text] 
v(7)=8 %[output:37af2703]
%[text] 그냥 v(7)하면 당연히 안나옴( v는 numel이 6, 근데 v(7)= 8 이라고 하면 자동으로 numel이7이 되면서 8들어감.
v(10)=8 %[output:78eab47c]
%[text] 하면 v의 8 9 는 자동으로 0들어가짐
%%
%[text] ## 배열을 만드는 또 다른 방법
 q=(9:-2:3)+1 %[output:23aab868]
%[text] 
 r=linspace(0,10,11) %[output:14595a45]
%[text] 
 g=logspace(0,4,5) %[output:85c3e1dc]
%[text] 이거랑 아랫거랑 같음.
b=0:4,z=10.^b %[output:55eb11ce] %[output:2180c8c7]

%%
%[text] ## 특별한 행렬
%[text]   zeros, ones magic, eye
U=zeros(3,4)+pi %[output:0e304d6e]
%[text] 
y=ones(2)*3
%[text] 
M=magic(6)
%[text] 
dm=diag(M)
%[text] M의 diagonal 만 빼줌.
dm=diag(diag(M))
%[text]  하면 M의 diagonal 로 diagonal Matrix 만듦
E=eye(3)
%[text] \+만약 E=eye(3)\*4 하면 4인 diagonal matrix 만듦
E2=E*E
%[text] 같은 identity matrix를 몇번이고 곱해도 똑같은게 또 나옴
%[text] 
%[text] 

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
%[output:0d447953]
%   data: {"dataType":"textualVariable","outputData":{"name":"a","value":"1.0000 + 2.0000i"}}
%---
%[output:3aed3c12]
%   data: {"dataType":"textualVariable","outputData":{"name":"aR","value":"1"}}
%---
%[output:34c741c5]
%   data: {"dataType":"textualVariable","outputData":{"name":"aimag","value":"2"}}
%---
%[output:64ff08af]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"b","rows":1,"type":"complex","value":[["1.0000 + 0.0000i","0.0000 + 2.0000i","1.0000 + 1.0000i"]]}}
%---
%[output:295377b0]
%   data: {"dataType":"textualVariable","outputData":{"name":"b1","value":"1"}}
%---
%[output:3bf941dc]
%   data: {"dataType":"textualVariable","outputData":{"name":"b2","value":"0.0000 + 2.0000i"}}
%---
%[output:3ac11d0c]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"-4"}}
%---
%[output:2f729757]
%   data: {"dataType":"matrix","outputData":{"columns":6,"name":"v","rows":1,"type":"double","value":[["10","8","6","4","2","0"]]}}
%---
%[output:156a6f58]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"ans","rows":1,"type":"double","value":[["10","8"]]}}
%---
%[output:79b09251]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"ans","rows":1,"type":"double","value":[["2","0"]]}}
%---
%[output:10cc6ccc]
%   data: {"dataType":"matrix","outputData":{"columns":6,"name":"u","rows":1,"type":"double","value":[["8","4","10","6","0","2"]]}}
%---
%[output:91dedf49]
%   data: {"dataType":"matrix","outputData":{"columns":5,"name":"M","rows":5,"type":"double","value":[["17","24","1","8","15"],["23","5","7","14","16"],["4","6","13","20","22"],["10","12","19","21","3"],["11","18","25","2","9"]]}}
%---
%[output:5fe2ab69]
%   data: {"dataType":"matrix","outputData":{"columns":5,"name":"m","rows":1,"type":"double","value":[["11","18","25","2","9"]]}}
%---
%[output:5ab12831]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"w","rows":5,"type":"double","value":[["1"],["7"],["13"],["19"],["25"]]}}
%---
%[output:33689f73]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"d","rows":2,"type":"double","value":[["12","21"],["18","2"]]}}
%---
%[output:37af2703]
%   data: {"dataType":"matrix","outputData":{"columns":7,"name":"v","rows":1,"type":"double","value":[["10","8","6","4","2","0","8"]]}}
%---
%[output:78eab47c]
%   data: {"dataType":"matrix","outputData":{"columns":10,"name":"v","rows":1,"type":"double","value":[["10","8","6","4","2","0","8","0","0","8"]]}}
%---
%[output:23aab868]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"q","rows":1,"type":"double","value":[["10","8","6","4"]]}}
%---
%[output:14595a45]
%   data: {"dataType":"matrix","outputData":{"columns":11,"name":"r","rows":1,"type":"double","value":[["0","1","2","3","4","5","6","7","8","9","10"]]}}
%---
%[output:85c3e1dc]
%   data: {"dataType":"matrix","outputData":{"columns":5,"name":"g","rows":1,"type":"double","value":[["1","10","100","1000","10000"]]}}
%---
%[output:55eb11ce]
%   data: {"dataType":"matrix","outputData":{"columns":5,"name":"b","rows":1,"type":"double","value":[["0","1","2","3","4"]]}}
%---
%[output:2180c8c7]
%   data: {"dataType":"matrix","outputData":{"columns":5,"name":"z","rows":1,"type":"double","value":[["1","10","100","1000","10000"]]}}
%---
%[output:0e304d6e]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"U","rows":3,"type":"double","value":[["1","1","1"],["1","1","1"],["1","1","1"]]}}
%---
