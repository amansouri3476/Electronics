************6-4
*******SOURCES
Vcc	100	0	12
Vee	200	0	-12
vin	1	0	sin	0	9	1k
*vin	1	0	ac=1
*******ELEMENTS
E1	2	0	1	3	10000
r1	1	0	10k
r2	100	2	1k
r3	2	200	1k
rL	3	0	100
c1	1	4	100u
********TRANSISTORS
q1	100	2	3	mynpn
q2	200	2	3	mypnp
*******MODELS
.model	mynpn	npn	is=1f	bf=50	va=100
.model	mypnp	pnp	is=1f	bf=50	va=100
*******ANALYSIS
.op
.tran	10u	10m	1m
*.ac	dec	10	1k	10k	
*.print	ac	gain=par('v(3)/v(1)')
.measure		tran	PL	avg	p(RL)	from=1m	to=5m
.measure		tran	P1	avg	p(R1)	from=1m	to=5m
.measure		tran	P2	avg	p(R2)	from=1m	to=5m
.measure		tran	P3	avg	p(R3)	from=1m	to=5m
.measure		tran	Pc1	avg	p(c1)	from=1m	to=5m
.measure		tran	Pe1	avg	p(E)	from=1m	to=5m
.measure		tran	Vee	avg	p(Vee)	from=1m	to=5m
.measure		tran	Vcc	avg	p(Vcc)	from=1m	to=5m
.measure 	tran	Ptot	avg	POWER	from=1m	to=9m
.four	1k	v(3)
.end