! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_sum
  use sum_mod
  implicit none
  character*(11) :: irp_here = 'provide_sum'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
 if (.not.sum_is_built) then
  call bld_sum
  sum_is_built = .True.

 endif
end subroutine provide_sum

subroutine bld_sum
  use sum_mod
    implicit none                                                       ! sum.irp.f:   6
  character*(3) :: irp_here = 'sum'                                     ! sum.irp.f:   1
    integer :: i,sum1                                                   ! sum.irp.f:   7
    logical :: prim                                                     ! sum.irp.f:   8
    sum=5                                                               ! sum.irp.f:  10
    sum1=2                                                              ! sum.irp.f:  11
    do i=4,2000000                                                      ! sum.irp.f:  12
        prim=.FALSE.                                                    ! sum.irp.f:  13
        call is_prime(i,prim)                                           ! sum.irp.f:  14
        if(prim) then                                                   ! sum.irp.f:  15
sum=sum+(i)                                                             ! sum.irp.f:  15
  endif                                                                 ! sum.irp.f:  15
    enddo                                                               ! sum.irp.f:  18
end subroutine bld_sum
