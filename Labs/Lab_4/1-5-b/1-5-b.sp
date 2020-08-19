************************1-5-b
**********SOURCES************
Vcc	100	0	5
Vee	200	0	-5
**********DEVICES************
R1	100	1	4.65k
R2	100	2	1k
Q1	1	1	200	mynpn
Q2	2	1	200	mynpn
**********MODELS*************
.model	mynpn	npn	is=1f	bf=250	va=100
***********ANALYSIS**********
.op
.end