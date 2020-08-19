#amplifier
.subckt amplifier	cc	ee	0	in	out
.include	opamp741.sp

********RESISTORS AND CAPACITORS
R1	in	1	1k
R2	1	out	22k

********OPAMP
X1	0	1	cc	ee	out	uA741

.ends