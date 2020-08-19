***************part 2 lab 5
***************SOURCES
Vcc	100	0	10
***************AC SOURCES AND RESISTOR
Vs	1	0	sin	0	110m	10k
*Vo	9	0	ac=1
R1	1	2	1k
***************ELEMENTS
R2	100	3	470K
R3	100	4	1K
R4	5	0	470
R5	100	6	470k
R6	100	7	1K
R7	8	0	470
R8	10	8	10K
C1	2	3	10u
C2	4	6	10u
C3	5	0	10u
C4	3	10	10u
C5	7	9	10u
***************MODELS
.model	mynpn	npn	bf=100	Va=100
Q1	4	3	5	mynpn
Q2	7	6	8	mynpn
***************ANALYSIS
.op
.tran	0.01u	2m	start=1ms
.ac	lin	20	1k	1000k
*.print ac gain =par('i(R6)/i(R1)')
*.print ac Rin  =par('v(2)/i(R1)')
*.print ac Ro  =par('v(9)/i(C5)')
.end
