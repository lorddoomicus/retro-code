10 REM GRAPHICAL PI FOR THE PLUS/4
20 REM THIS IS LICENSED FOR USE UNDER THE GNU GPU V2
30 REM 2024-05-18 DWALKER INITIAL VERSION
40 REM (C) 2024 DERRIK WALKER V2.0
50 REM THIS IS LICENSED FOR USE UNDER THE GNU GPU V2
60 REM 2024-05-18 DWALKER INITIAL VERSION
70 BL=150:C=20000
80 B1=50:B2=0:B3=B1+150:B4=B2+150
90 CR=BL/2:CX=B1+CR:CY=B2+CR
100 TI$="000000":N=0
110 GRAPHIC 2,1
120 BOX 1,B1,B2,B3,B4
130 CIRCLE , CX,CY,CR
140 FOR I=1 TO C
150 X=INT(RND(1)*(B3-B1))+B1
160 Y=INT(RND(1)*(B4-B2))+B2
170 IF(SQR((CX-X)^2+(CY-Y)^2)<=CR) THEN N=N+1
180 PRINT USING "       ######  #.##"; I,(N/I)*4
190 DRAW 1,X,Y
200 NEXT
210 PRINT "RUN TIME IN SEC:";TI/60
