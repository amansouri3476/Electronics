****************************
.subckt Env-Det2	1	2	0
******************input |
*************************output |
************************************GND |
***************SOURCE
*Vam	1	0	AM	1	1	20k	600k	0
c1	2	0	1u
r1	2	0	10
D1	1	2	my-diode
*************************models
.model	my-diode	D	is=10n	
********************
*.op
*.tran	1u	1m	0
.ends