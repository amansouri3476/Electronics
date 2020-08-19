******AM_TOTAL
.include "D:\university\Term 4\Electronics Principles & Lab\Dr.Fakhar Zade\Simulation\HW3\HW3_sim\Hspice Run\channel.sp"
.include "D:\university\Term 4\Electronics Principles & Lab\Dr.Fakhar Zade\Simulation\HW3\HW3_sim\Hspice Run\Myopamp.sp"
.include "D:\university\Term 4\Electronics Principles & Lab\Dr.Fakhar Zade\Simulation\HW3\HW3_sim\Hspice Run\buffer[1].sp"
.include "D:\university\Term 4\Electronics Principles & Lab\Dr.Fakhar Zade\Simulation\HW3\HW3_sim\Hspice Run\buffer[2].sp"
.include "D:\university\Term 4\Electronics Principles & Lab\Dr.Fakhar Zade\Simulation\HW3\HW3_sim\Hspice Run\Env-Det1.sp"
.include "D:\university\Term 4\Electronics Principles & Lab\Dr.Fakhar Zade\Simulation\HW3\HW3_sim\Hspice Run\Env-Det2.sp"
.include "D:\university\Term 4\Electronics Principles & Lab\Dr.Fakhar Zade\Simulation\HW3\HW3_sim\Hspice Run\filter1.sp"
.include "D:\university\Term 4\Electronics Principles & Lab\Dr.Fakhar Zade\Simulation\HW3\HW3_sim\Hspice Run\filter2.sp"
.include "D:\university\Term 4\Electronics Principles & Lab\Dr.Fakhar Zade\Simulation\HW3\HW3_sim\Hspice Run\LPF1.sp"
.include "D:\university\Term 4\Electronics Principles & Lab\Dr.Fakhar Zade\Simulation\HW3\HW3_sim\Hspice Run\LPF2.sp"
.include "D:\university\Term 4\Electronics Principles & Lab\Dr.Fakhar Zade\Simulation\HW3\HW3_sim\Hspice Run\HPF1.sp"
.include "D:\university\Term 4\Electronics Principles & Lab\Dr.Fakhar Zade\Simulation\HW3\HW3_sim\Hspice Run\HPF2.sp"
********
Vam1	0	1	am	1	1	10K	150K
Vam2	1	2	am	1	1	20K	600K
Vcc	100	0	5
Vee	200	0	-5
******CHANNELS
Xchannel1	2	3	channel
******FILTERS
Xfilter1	3	4	0	filter1
Xfilter2	3	5	0	filter2
******RESISTORS TO DECREASE Av
r1	4	6	900
r2	5	7	800
******OP AMPS
Xopamp1	100	200	6	0	8	Myopamp
Xopamp2	100	200	7	0	9	Myopamp

******BUFFERS for isolating outputs of opamps from envdets
Xbuffer1	100	200	8	10	buffer[1]
Xbuffer2	100	200	9	11	buffer[2]
******ENVELOPE DETECTORS
XEnv-Det1	10	12	0	Env-Det1
XEnv-Det2	11	13	0	Env-Det2

******LPFs
XLPF1	12	14	0	LPF1
XLPF2	13	15	0	LPF2

******HPFs
XHPF1	14	16	0	HPF1
XHPF2	15	17	0	HPF2

******RESISTORS TO DECREASE Av
r3	16	18	10k
r4	18	0	2.2

r5	17	19	10k
r6	19	0	4.2

******OP AMPS
Xopamp3	100	200	18	0	20	Myopamp
Xopamp4	100	200	19	0	21	Myopamp

******SPEAKERS
r7	20	0	8
r8	21	0	8
.op
.tran	10u	10m	0m
.four	10k	v(20)
.four	20k	v(21)
.end




















