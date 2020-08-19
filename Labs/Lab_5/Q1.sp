Q1
*
Vcc	100	0	10
*
Vs	1	0	ac=0
	Vo	9	0	ac=1
Rs	1	2	1K
*
R2	100	3	470K
R3	100	4	1K
R4	5	0	470
R5	100	6	470k
R6	100	7	1K
R7	8	0	470
R8	9	5	10K
C1	2	3	1u
C2	4	6	1u
C3	8	0	1u
C4	7	9	1u
*
.model	mynpn	npn	bf=100	Va=100
Q1	4	3	5	mynpn
Q2	7	6	8	mynpn
*
.op
.ac	lin	20	1k	1000k
.print ac gain =par('v(9)/v(1)')
.print ac Rin1  =par('v(1)/i(Rs)')
.print ac Rin2  =par('v(2)/i(Rs)')
.print ac Ro  =par('v(9)/i(C4)')
.end
