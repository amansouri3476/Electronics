***********************//DEVICES//**********************
Vcc	100	0	5
Vee	200	0	-5
******************//TRANSISTORS//***********************
Q1	3	1	2	mynpn1
Q2	100	4	5	mynpn2
Q3	7	6	8	mypnp
Q4	100	9	10	mynpn3
*******************//RESISTORS//************************
R1	100	1	22k
R2	1	200	4.7k
Rc1	100	3	18k
Re1	2	200	4.7k

R3	100	4	4.7k
R4	4	200	82k
Re2	5	200	22k

R5	100	6	10k
R6	6	200	39k
Rc3	7	200	3.3k
Re3	100	8	1k

R7	100	9	180k
Re4	10	200	1k
*********************//CAPACITORS//*********************
C1	2	200	100u
C2	3	4	100u
C3	5	6	100u
C4	7	9	100u
C5	100	8	100u
Cin	12	1	100u
**********************//INPUT//*************************
Rs	11	12	100
Vin	11	0	sin	0	0.8m	1k
***********************//ROUT//*************************

***********************//MODELS//***********************
.model	mynpn1	npn	is=1f	bf=200	va=100
.model	mynpn2	npn	is=1f	bf=200	va=100
.model	mypnp	pnp	is=1f	bf=200	va=100
.model	mynpn3	npn	is=1f	bf=200	va=100
***********************//ANALYSIS//*********************
.op
.tran	1us	10ms	start=2ms
.end