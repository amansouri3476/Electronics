***********************//DEVICES//**********************
Vcc	100	0	10
Q1	3	2	1	mynpn
Rc	100	3	4.5k
Re	1	0	0.5k
R1	100	2	8.8k
R2	2	0	1.2k
C1	2	0	100u
C2	1	4	100u
Rs	4	5	120
Vin	5	0	ac=1	sin	0	145m	1k
***********************//ROUT//*************************
*Vtest	6	0	ac=1	
*Ctest	3	6	100u
***********************//MODELS//***********************
.model	mynpn	npn	is=1f	bf=100	va=100
***********************//ANALYSIS//*********************
.op
.ac	dec	40	1k	100k
.tran	0.01u	10m	start=4ms
.print	ac	Rin=par('V(5)/I(Rs)')
.print	ac	gain=par('(V(3)-5.7)/V(5)')
.four	1k	V(3)
*.print	ac	Rout=par('V(3)/I(Ctest)')
.end