#Q2
*
VCC	100	0	6
*
Vs	1	0	ac = 1
	*vso	6	0	ac=1
Rs	1	2	30K
*
Rb1	100	3	36K
Rb2	3	0	18K
Rf	3	4	38K
Rc	100	4	4K
Re	5	0	1.3K
C1	2	3	1u
C2	5	0	1u
C3	4	6	1u
Rl	6	0	4K
*
Q1	4	3	5	mynpn
.model	mynpn	npn	is=2f	bf=100	va=100
*
.op
.ac	lin	20	1k	1000k
.print ac gain =par('v(6)/v(1)')
.print ac Rin1  =par('v(1)/i(Rs)')
.print ac Rin2  =par('v(2)/i(Rs)')
.print ac Ro2  =par('v(6)/i(C3)')
.end
