*
vcc  100  0  12
vee  200  0  -12
vi  1  0  ac=1*	sin  0  6.5  1k
Edep  2  0  1  3  10000

r3  3  0  100
r1  1  0  10k
q1  100  2  3  mynpn
q2  200  2  3  mypnp

.model  mynpn  npn  bf=25	is=1f
.model  mypnp  pnp  bf=25  is=1f

.op
.tran  10u  5m  0
.ac  lin  5  1k  10k
.print  ac  gain=par('v(3)/v(1)')
*.print  ac  Rin =par('v(1) / i(c1)')
.end