push_pull
************************** SOURCES
Vcc	cc	0	12
Vs	in	0	sin	0	6.7	1k

************************** RESISTORS AND CAPACITORS
R1	1	0	1k
R2	cc	1	1k
RL	out	0	100
C1	1	in	100u
C2	2	out	100u

************************** TRANSISTORS
Q1	cc	1	2	mynpn
Q2	0	1	2	mypnp
.model	mynpn	npn	is=2f	bf=50	va=100
.model	mypnp	pnp	is=2f	bf=50	va=100

************************** ANALYSIS
.op
.tran	1u	10m

.measure	tran	PL	avg	p(RL)	from=1m	to=9m
.four	1k	v(out)
.measure	tran	Ptot	avg	POWER	from=1m	to=9m
.plot i(Q1)
.plot i(Q2)

.end