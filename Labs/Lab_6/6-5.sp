************6-5
*******SOURCES
Vcc	100	0	12
vin	1	0	sin	0	5.0	1k
*vin	1	0	ac=1
*******ELEMENTS
c1	1	2	100u
r5	2	0	1k
r6	100	2	1k
D1	3	2	my-diode
D2	2	4	my-diode
r4	100	3	1k
r3	4	0	1k
r1	5	7	10
r2	7	6	10
c2	7	8	100u
rL	8	0	100
********TRANSISTORS
q1	100	3	5	mynpn
q2	0	4	6	mypnp
*******MODELS
.model	mynpn	npn	is=1f	bf=50	va=100
.model	mypnp	pnp	is=1f	bf=50	va=100
.model	my-diode	D	is=10n	
*******ANALYSIS
.op
.tran	10u	10m	1m
*.ac	dec	10	1k	10k
*.print	ac	gain=par('v(8)/v(1)')
*.print	ac	rin=par('v(1)/i(c1)')
.measure	tran	PL	avg	p(rl)	from=1m	to=9m
.measure	tran	Ptot	avg	POWER	from=1m	to=9m
.measure	tran	Vo	rms	v(8)	from=1m	to=9m
.four	1k	v(8)
.end