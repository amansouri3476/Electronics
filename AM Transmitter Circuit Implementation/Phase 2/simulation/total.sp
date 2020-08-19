#total

.include	output_twostage.sp
.include	amplifier.sp
.include	modulator.sp

************VOLTAGE SOURCES
Vi	in	0	sin	0	75m	1k
Vc	Cin	0	sin	0	3	670k
Vcc	cc	0	6
Vee	ee	0	-6


************SUBCKTS
X1	cc	ee	0	in	1	amplifier
X2	cc	ee	0	1	2	outputstage
X3	cc	0	Cin	2	out	modulator

***********ANALYSIS
.tran	0.1u	25m	20m
.four 	1k	v(out)

.end