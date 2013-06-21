! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_sum
  use sum_mod
  use fact_mod
  use limit_mod
  implicit none
  character*(11) :: irp_here = 'provide_sum'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
  if (.not.limit_is_built) then
    call provide_limit
  endif
  if (.not.fact_is_built) then
    call provide_fact
  endif
 if (.not.sum_is_built) then
  call bld_sum
  sum_is_built = .True.

 endif
end subroutine provide_sum

subroutine bld_sum
  use sum_mod
  use fact_mod
  use limit_mod
    implicit none                                                       ! sum.irp.f:   2
  character*(3) :: irp_here = 'sum'                                     ! sum.irp.f:   1
    integer :: i,j                                                      ! sum.irp.f:   8
   sum=0                                                                ! sum.irp.f:   9
    do i=1,limit-1                                                      ! sum.irp.f:  10
        do j=1,nfact                                                    ! sum.irp.f:  11
            if(MOD(i,fact(j)).eq.0)then                                 ! sum.irp.f:  12
                sum=sum+(i)                                             ! sum.irp.f:  13
                EXIT                                                    ! sum.irp.f:  14
            endif                                                       ! sum.irp.f:  15
        enddo                                                           ! sum.irp.f:  16
    enddo                                                               ! sum.irp.f:  17
end subroutine bld_sum
