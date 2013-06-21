! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_n
  use n_mod
  implicit none
  character*(9) :: irp_here = 'provide_n'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
 if (.not.n_is_built) then
  call bld_n
  n_is_built = .True.

 endif
end subroutine provide_n

subroutine bld_n
  use n_mod
  character*(1) :: irp_here = 'n'                                         ! n.irp.f:   1
    write(6,*)'n?'                                                        ! n.irp.f:   6
    read(5,*)n                                                            ! n.irp.f:   7
end subroutine bld_n
