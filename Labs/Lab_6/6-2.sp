************6-2
*******SOURCES
Vcc	100	0	12
vin	1	0	sin	0	4	1k
*vin	1	0	ac=1
*******ELEMENTS
r1	100	2	106
r2	2	0	134
r3	3	0	140
rl	4	0	100
c1	1	2	100u
c2	3	4	100u
********TRANSISTORS
q1	100	2	3	mynpn
*******MODELS
.model	mynpn	npn	is=1f	bf=50	va=100
*******ANALYSIS
.op
*.ac dec	10	1k	10k
.tran	10u	10m	1m
*.print	ac	rin=par('v(1)/i(c1)')
*.print	ac	gain=par('v(4)/v(1)')

.measure	tran	PL	avg	p(rl)	from=1m	to=9m
.measure	tran	Ptot	avg	POWER	from=1m	to=9m
.measure	tran	Vo	rms	v(4)	from=1m	to=9m
.measure	tran	Vin	rms	v(1)	from=1m	to=9m
.measure	tran	ic1	rms	i(C1)	from=1m	to=9m

.four	1k	v(4)
.end