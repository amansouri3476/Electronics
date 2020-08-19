class_A
************************** SOURCES
Vcc	100	0	12
Vs	in	0	sin	0	3.5	1k

************************** RESISTORS AND CAPACITORS
R1	100	1	270
R2	1	0	1k
R3	2	0	150
RL	out	0	100
C1	in	1	100u
C2	2	out	100u

************************** TRANSISTORS
Q1	100	1	2	mynpn
.model	mynpn	npn	is=2f	bf=50	va=100

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