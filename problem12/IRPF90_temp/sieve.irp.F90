! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_sieve
  use sieve_mod
  implicit none
  character*(13) :: irp_here = 'provide_sieve'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
 if (allocated (sieve) ) then
  irp_dimensions_OK = .True.
  irp_dimensions_OK = irp_dimensions_OK.AND.(SIZE(sieve,1)==(100000))
  if (.not.irp_dimensions_OK) then
   deallocate(sieve,stat=irp_err)
   if (irp_err /= 0) then
     print *, irp_here//': Deallocation failed: sieve'
     print *, ' size: (100000)'
   endif
   if ((100000>0)) then
    allocate(sieve(100000),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: sieve'
     print *, ' size: (100000)'
    endif
   endif
  endif
 else
   if ((100000>0)) then
    allocate(sieve(100000),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: sieve'
     print *, ' size: (100000)'
    endif
   endif
 endif
 if (.not.sieve_is_built) then
  call bld_sieve
  sieve_is_built = .True.

 endif
end subroutine provide_sieve

subroutine bld_sieve
  use sieve_mod
  character*(5) :: irp_here = 'sieve'                                 ! sieve.irp.f:   1
    sieve=.FALSE.                                                     ! sieve.irp.f:   2
end subroutine bld_sieve
