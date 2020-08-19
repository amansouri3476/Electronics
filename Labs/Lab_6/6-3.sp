************6-3
*******SOURCES
Vcc	100	0	12
vin	1	0	sin	0	6.6	1k
*vin	1	0	ac=1
*******ELEMENTS
r2	100	2	1k
r1	2	0	1k
rL	4	0	100
c1	1	2	100u
c2	3	4	100u	
********TRANSISTORS
q1	100	2	3	mynpn
q2	0	2	3	mypnp
*******MODELS
.model	mynpn	npn	is=1f	bf=50	va=100
.model	mypnp	pnp	is=1f	bf=50	va=100
*******ANALYSIS
.op
.tran	10u	10m	0m
*.ac	dec	10	1k	10k
.measure	tran	PL	avg	p(rl)	from=1m	to=9m
.measure	tran	Ptot	avg	POWER	from=1m	to=9m
.plot i(q1)
.plot i(q2)
.measure	tran	v	pp	V(4)
.four	1k	v(4)
.end