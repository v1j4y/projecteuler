! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_sumsq
  use sumsq_mod
  use n_mod
  implicit none
  character*(13) :: irp_here = 'provide_sumsq'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
  if (.not.n_is_built) then
    call provide_n
  endif
 if (.not.sumsq_is_built) then
  call bld_sumsq
  sumsq_is_built = .True.

 endif
end subroutine provide_sumsq

subroutine bld_sumsq
  use sumsq_mod
  use n_mod
    implicit none                                                     ! sumsq.irp.f:   2
  character*(5) :: irp_here = 'sumsq'                                 ! sumsq.irp.f:   1
    sumsq=(n)*(n+1)*(2*n+1)/6                                         ! sumsq.irp.f:   7
end subroutine bld_sumsq
