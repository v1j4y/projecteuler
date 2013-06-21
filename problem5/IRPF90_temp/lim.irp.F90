! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_lim
  use lim_mod
  implicit none
  character*(11) :: irp_here = 'provide_lim'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
 if (.not.lim_is_built) then
  call bld_lim
  lim_is_built = .True.

 endif
end subroutine provide_lim

subroutine bld_lim
  use lim_mod
    implicit none                                                       ! lim.irp.f:   2
  character*(3) :: irp_here = 'lim'                                     ! lim.irp.f:   1
    write(6,*)'lim?'                                                    ! lim.irp.f:   7
    read(5,*)lim                                                        ! lim.irp.f:   8
end subroutine bld_lim
