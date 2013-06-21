! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_number
  use number_mod
  implicit none
  character*(14) :: irp_here = 'provide_number'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
 if (.not.number_is_built) then
  call bld_number
  number_is_built = .True.

 endif
end subroutine provide_number

subroutine bld_number
  use number_mod
    implicit none                                                    ! number.irp.f:   2
  character*(6) :: irp_here = 'number'                               ! number.irp.f:   1
    write(6,*)'number?'                                              ! number.irp.f:   6
    read(5,*)number                                                  ! number.irp.f:   7
end subroutine bld_number
