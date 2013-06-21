! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_limit
  use limit_mod
  implicit none
  character*(13) :: irp_here = 'provide_limit'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
 if (.not.limit_is_built) then
  call bld_limit
  limit_is_built = .True.

 endif
end subroutine provide_limit

subroutine bld_limit
  use limit_mod
  character*(5) :: irp_here = 'limit'                                 ! limit.irp.f:   1
    write(6,*)'limit?'                                                ! limit.irp.f:   6
    read(5,*)limit                                                    ! limit.irp.f:   7
    write(6,*)'nfact?'                                                ! limit.irp.f:   8
    read(5,*)nfact                                                    ! limit.irp.f:   9
end subroutine bld_limit
