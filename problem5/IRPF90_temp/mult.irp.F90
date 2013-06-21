! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_mult
  use priexp_mod
  use prim_mod
  use mult_mod
  use maxpri_mod
  implicit none
  character*(12) :: irp_here = 'provide_mult'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
  if (.not.prim_is_built) then
    call provide_prim
  endif
  if (.not.priexp_is_built) then
    call provide_priexp
  endif
  if (.not.maxpri_is_built) then
    call provide_maxpri
  endif
 if (.not.mult_is_built) then
  call bld_mult
  mult_is_built = .True.

 endif
end subroutine provide_mult

subroutine bld_mult
  use priexp_mod
  use prim_mod
  use mult_mod
  use maxpri_mod
    implicit none                                                      ! mult.irp.f:   6
  character*(4) :: irp_here = 'mult'                                   ! mult.irp.f:   1
    integer ::i,sum                                                    ! mult.irp.f:   8
    mult=1                                                             ! mult.irp.f:  10
    do i=1,maxpri                                                      ! mult.irp.f:  11
        mult=mult*(prim(i)**priexp(i))                                 ! mult.irp.f:  12
    enddo                                                              ! mult.irp.f:  13
end subroutine bld_mult
