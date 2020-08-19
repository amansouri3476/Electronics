HW 2
*************sources 
vcc	100	0	5
vee	200	0	-5
vin	5	0	ac=1	sin	0	0.2m	10k
*************resistors
r1	1	100	8.8k
r2	1	200	1.2k
r3	2	100	18k
r4	3	200	1k
r5	5	4	50
r6	100	6	44k
r7	6	200	6k
r8	100	8	8k	
r9	200	7	500
r10	9	200	100
*r11	100	9	35
r12	10	100	83k
r13	10	200	10k
r14	11	200	125
r15	14	200	25
r16	12	100	2.5k
r17	13	100	8.4k
r18	16	200	8
r19	17	0	50
*************capacitors
c1	1	0	100u
c2	3	4	100u
c3	2	6	100u
c4	9	7	100u
c5	10	8	100u
c6	11	14	100u
c7	12	13	100u
c8	16	17	100u
*************transistors
q1	2	1	3	mynpn
q2	8	6	7	mynpn
q3	12	10	11	mynpn
q4	100	13	15	mynpn
q5	100	15	16	mynpn2
*************models
.model	mynpn	npn	is=2f	bf=100	va=100
.model	mynpn2	npn	is=2f	bf=20	va=100
*************
.op
.tran	10u	20m	10m
.four	10k	v(17)
*.ac	lin	2	10k	100k
*.print	ac	gain=par('v(17)/v(5)')
*.print	ac	Rin=par('v(3)/i(c2)')
.end		
