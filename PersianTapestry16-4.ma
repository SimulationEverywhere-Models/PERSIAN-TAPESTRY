[top]
components : persiantapestry

[persiantapestry]
type : cell
dim : (16, 16, 3)
delay : inertial
defaultDelayTime : 100
border : nowrapped
neighbors :                          persiantapestry(0,0,-2)  
%Tapestry Plane neighborhood
neighbors :                          persiantapestry(0,0,-1)  
%Front Plane neighborhood
neighbors :                          persiantapestry(-1,0,0) 
neighbors : persiantapestry(0,-1,0)  persiantapestry(0,0,0)  persiantapestry(0,1,0)
neighbors :                          persiantapestry(1,0,0)  
%Rear plane neighborhood
neighbors :                          persiantapestry(0,0,1)  
%Tapestry Plane neighborhood
neighbors :                          persiantapestry(0,0,2)  

localtransition : tapestry %frontplane

initialValue : 0
initialCellsValue : PersianTapestry16-4.val

[tapestry]

%[rearplane]
rule : {(0,0,-1)} 100 { cellpos(2) = 2 }

%[tapestryplane]
rule : 0 100 { cellpos(2) = 0 and (0,0,1)=0 and (0,0,2)=0 } %white
rule : 1 100 { cellpos(2) = 0 and (0,0,1)=1 and (0,0,2)=0 } %Green
rule : 2 100 { cellpos(2) = 0 and (0,0,1)=0 and (0,0,2)=1 } %Blue
rule : 3 100 { cellpos(2) = 0 and (0,0,1)=1 and (0,0,2)=1 } %Red

%[frontplane]
rule : 1 100 { cellpos(2) = 1 and even(truecount - (0,0,0) - (0,0,1) - (0,0,-1) ) }
rule : 0 100 { cellpos(2) = 1 and odd(truecount - (0,0,0) - (0,0,1) - (0,0,-1) ) }

