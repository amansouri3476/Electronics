push_pull_improved
************************** SOURCES
Vcc	cc	0	12
Vs	in	0	sin	0	4.5	1k

************************** RESISTORS AND CAPACITORS
RL	out	0	100
R1	4	5	10
R2	4	6	10
R4	cc	2	10k
R3	3	0	10k
R6	cc	1	1k
R5	1	0	1k
C1	1	in	100u
C2	4	out	100u

************************** TRANSISTORS AND DIODES
Q1	cc	2	5	mynpn
Q2	0	3	6	mypnp
D1	2	1	mydiode
D2	1	3	mydiode

.model	mynpn	npn	is=2f	bf=50	va=100
.model	mypnp	pnp	is=2f	bf=50	va=100
.model	mydiode	D	is=2f

************************** ANALYSIS
.op
.tran	1u	10m

.measure	tran	PL	avg	p(RL)	from=1m	to=9m
.measure	tran	Ptot	avg	POWER	from=1m	to=9m
.measure	tran	Vo	rms	v(out)	from=1m	to=9m
.measure	tran	Vin	rms	v(in)	from=1m	to=9m
.measure	tran	ic1	rms	i(C1)	from=1m	to=9m

.four	1k	v(out)


.end