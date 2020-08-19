#modulator
.subckt	modulator	cc	0	Cin	Min	out

******ELEMENTS
R1	Cin	1	10
R2	cc	3	100k
C1	2	out	330p
C2	out	0	330p
C3	Min	3	10u
L1	2	3	470u

******TRANSISTORS
Q1	2	1	0	mynpnpower

******MODELS
.model	mynpnpower	npn	bf=50	is=1f

.ends