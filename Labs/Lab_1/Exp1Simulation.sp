#Exp1Simulation
*******************DEVICES***********************
Vcc	100	0	10
R1	100	2	82k
R2	2	0	22k
Rc	100	3	3.9k
Re	1	0	1.5k
Q1	3	2	1	mynpn
C1	4	2	100u
Rs	4	5	50
Vin	5	0	ac=0*	sin	0	170m	1k
C2	1	7	100us
R3	7	0	150
******************MODELS*************************
.model	mynpn	npn	is=1f	bf=150	va=100
*******************ROUT**************************
Vtest	6	0	ac=1	
Ctest	3	6	100u
*****************ANALYSIS************************
.op
.ac	dec	40	1k	100k
.tran	0.01u	10m	start=4ms
*.print	ac	gain=par('(V(3)-6.605)/V(5)')
*.print	ac	Rin=par('V(5)/I(C1)')
.print	ac	Rout=par('V(3)/I(Ctest)')
.four	1k V(3)
.fft V(3)
.end