*********MUSIC.sp
.include "D:\university\Term 4\Electronics Principles & Lab\Dr.Fakhar Zade\Simulation\HW3\HW3_sim\data1.sp"
.include "D:\university\Term 4\Electronics Principles & Lab\Dr.Fakhar Zade\Simulation\HW3\HW3_sim\Hspice Run\Myopamp.sp"
Vcc	100	0	5
Vee	200	0	-5
Xdata	1	0	data1
r2	1	2	6
Xopamp	100	200	2	0	3	Myopamp
Rl	3	0	8
.op
.tran	7.558578987e-6	7.291685563	0
.print tran	Vout=par('v(3)')
.end



