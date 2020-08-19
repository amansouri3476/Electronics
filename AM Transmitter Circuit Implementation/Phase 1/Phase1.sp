**************Project-Phase 1
*******SOURCES
Vcc	100	0	11.6
Vin	in	0	sin	0	3	670k
Vsound	4	0	sin	0	2	1k
*******ELEMENTS
R1	100	3	100k
Rb	in	1	10
C3	3	4	10u
L1	3	2	470u
C1	2	5	330p
C2	5	0	330p
*******DEVICES
Q1	2	1	0	mynpn
*******MODELS
.model	mynpn	npn	is=1f	bf=200
*******ANALYSIS
.op
.tran	10u	5m	1m

.end
