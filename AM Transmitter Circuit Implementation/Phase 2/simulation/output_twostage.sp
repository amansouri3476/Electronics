#outputstage
.subckt	outputstage	cc	ee	0	in	out
.include	opamp741.sp	

*******RESISTORS and CAPACITORS
R1	cc	3	1k
R2	4	ee	1k
R3	5	7	20
R4	6	7	20
Rf1	out	9	1k
Rf2	9	0	1k
*C1	1	2	10u
Rt2	7	8	1
Rt1	1	2	1

*******OPAMP
X1	in	9	cc	ee	1	uA741

*******TRANSISTORS
Q1	3	3	2	mynpn
Q2	4	4	2	mypnp
Q3	cc	3	5	mynpn
Q4	ee	4	6	mypnp
Q5	cc	8	out	mynpnpower
Q6	ee	8	out	mypnppower

*******MODELS
.model	mynpn	npn	bf=250	is=1f
.model	mypnp	pnp	bf=200	is=1f
.model	mynpnpower	npn	bf=50	is=1f
.model	mypnppower	pnp	bf=40	is=1f


.ends