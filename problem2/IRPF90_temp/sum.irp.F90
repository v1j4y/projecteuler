! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_sum
  use sum_mod
  use limit_mod
  implicit none
  character*(11) :: irp_here = 'provide_sum'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
  if (.not.limit_is_built) then
    call provide_limit
  endif
 if (.not.sum_is_built) then
  call bld_sum
  sum_is_built = .True.

 endif
end subroutine provide_sum

subroutine bld_sum
  use sum_mod
  use limit_mod
    implicit none                                                       ! sum.irp.f:   2
  character*(3) :: irp_here = 'sum'                                     ! sum.irp.f:   1
    integer :: i,j,tmp                                                  ! sum.irp.f:   8
   sum=0                                                                ! sum.irp.f:   9
    do while (term1.le.limit .or. term2.le.limit)                       ! sum.irp.f:  11
        write(6,*)term1,term2                                           ! sum.irp.f:  13
        if(MOD(term1,2).eq.0) then                                      ! sum.irp.f:  15
sum=sum+term1                                                           ! sum.irp.f:  15
  endif                                                                 ! sum.irp.f:  15
        if(MOD(term2,2).eq.0) then                                      ! sum.irp.f:  17
sum=sum+term2                                                           ! sum.irp.f:  17
  endif                                                                 ! sum.irp.f:  17
        term1=term1+(term2)                                             ! sum.irp.f:  19
        term2=term2+(term1)                                             ! sum.irp.f:  20
    enddo                                                               ! sum.irp.f:  22
        if(MOD(term1,2).eq.0) then                                      ! sum.irp.f:  24
sum=sum+term1                                                           ! sum.irp.f:  24
  endif                                                                 ! sum.irp.f:  24
        if(MOD(term2,2).eq.0) then                                      ! sum.irp.f:  26
sum=sum+term2                                                           ! sum.irp.f:  26
  endif                                                                 ! sum.irp.f:  26
end subroutine bld_sum
