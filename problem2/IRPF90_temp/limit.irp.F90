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
    write(6,*)'limit?'                                                ! limit.irp.f:   7
    read(5,*)limit                                                    ! limit.irp.f:   8
    write(6,*)'term1?'                                                ! limit.irp.f:   9
    read(5,*)term1                                                    ! limit.irp.f:  10
    write(6,*)'term2?'                                                ! limit.irp.f:  11
    read(5,*)term2                                                    ! limit.irp.f:  12
end subroutine bld_limit
