.TH "IRPF90 entities" l prim "IRPF90 entities" prim
.SH Declaration
.nf
integer, allocatable	:: prim	(maxpri)
.ni
.SH Description
! stores all primes from 1 to lim
.SH File
.P
prim.irp.f
.SH Needs
lim
.br
maxpri
.br
.SH Needed by
mult
.br
priexp
.br
