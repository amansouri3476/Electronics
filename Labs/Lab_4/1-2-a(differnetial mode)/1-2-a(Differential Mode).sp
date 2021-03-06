*************** 2-1-a-Differential Mode
************SOURCES********************
Vcc	100	0	5
Vee	200	0	-5
vin	3	8	ac=0	sin	0	1	1k
***********OUTPUT IMPEDANCE************
Vtest	7	0	ac=1
Ctest	7	2	100u
***************************************
R1	100	1	3.9k
R2	100	2	3.9k
R3	4	5	100
R4	6	5	100
R5	5	200	3.9k
R6	8	0	0.000001
*******************TRANSISTORS*********
Q1	1	3	4	mynpn
Q2	2	0	6	mynpn
******************MODELS***************
.model	mynpn	npn	is=1f	bf=250	va=100
*******************ANALYSIS************
.op
.tran	0.01u	10m	start=4ms
.ac	dec	2	1k	100k
.print	ac	Rin=par('V(3)/I(R6)')
.print	ac	gain=par('V(2)/V(3)')
.print	ac	Rout=par('V(7)/I(Ctest)')
.end