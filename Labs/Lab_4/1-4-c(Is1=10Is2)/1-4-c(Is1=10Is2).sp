*************** 4-1-3(Is1=10Is2)
************SOURCES********************
Vcc	100	0	5
Vee	200	0	-5
vin1	3	0	ac=1	sin	0	1	1k
vin2	4	0	ac=1	sin	0	1	1k
***********OUTPUT IMPEDANCE************
*Vtest	7	0	ac=1
*Ctest	2	7	100u
***************************************
R1	100	1	10k
R2	100	2	10k
REE	5	200	4.7k
*******************TRANSISTORS*********
Q1	1	3	5	mynpn1
Q2	2	4	5	mynpn2
******************MODELS***************
.model	mynpn1	npn	is=10f	bf=250	va=100
.model	mynpn2	npn	is=1f	bf=250	va=100
*******************ANALYSIS************
.op
*.tran	0.01u	10m	start=4ms
*.ac	dec	2	1k	100k
*.print	ac	Rin=par('V(3)/I(R6)')
*.print	ac	gain=par('1000000000*(V(2)-V(1))/V(3)')
*.print	ac	Rout=par('2*V(7)/I(Ctest)')
.end