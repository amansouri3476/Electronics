push_pull_with_feedback
************************** SOURCES
Vcc	cc	0	12
Vee	ee	0	-12
Vs	in	0	sin	0	6	1k
E1	1	0	in	out	10000

************************** RESISTORS AND CAPACITORS
R1	in	0	10k
R2	cc	2	1k
R3	2	ee	1k
RL	out	0	100
C1	1	2	100u
C2	3	out	100u


************************** TRANSISTORS
Q1	cc	2	3	mynpn
Q2	ee	2	3	mypnp
.model	mynpn	npn	is=2f	bf=50	va=100
.model	mypnp	pnp	is=2f	bf=50	va=100

************************** ANALYSIS
.op
.tran	1u	10m

.measure	tran	PL	avg	p(RL)	from=1m	to=9m
.four	1k	v(out)
.measure	tran	Ptot	avg	POWER	from=1m	to=9m

.end