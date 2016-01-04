#!/bin/bash


MPIRUN='mpirun -n 2 --npernode 2'
SIGMA='sigma.cplx.x'
SIGMAOUT='sigma.out'

ln -nfs ../14-Wfn_co/Wavefunctions/wfn.cplx WFN_inner
ln -nfs ../14-Wfn_co/Wavefunctions/rho.cplx RHO
ln -nfs ../14-Wfn_co/Wavefunctions/vxc.cplx VXC
ln -nfs ../21-Epsilon/eps0mat eps0mat
ln -nfs ../21-Epsilon/epsmat epsmat

$MPIRUN $SIGMA &> $SIGMAOUT
