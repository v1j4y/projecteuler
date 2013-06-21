! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_factors
  use factors_mod
  use number_mod
  implicit none
  character*(15) :: irp_here = 'provide_factors'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
  if (.not.number_is_built) then
    call provide_number
  endif
 if (allocated (factors) ) then
  irp_dimensions_OK = .True.
  irp_dimensions_OK = irp_dimensions_OK.AND.(SIZE(factors,1)==(100000))
  if (.not.irp_dimensions_OK) then
   deallocate(factors,stat=irp_err)
   if (irp_err /= 0) then
     print *, irp_here//': Deallocation failed: factors'
     print *, ' size: (100000)'
   endif
   if ((100000>0)) then
    allocate(factors(100000),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: factors'
     print *, ' size: (100000)'
    endif
   endif
  endif
 else
   if ((100000>0)) then
    allocate(factors(100000),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: factors'
     print *, ' size: (100000)'
    endif
   endif
 endif
 if (.not.factors_is_built) then
  call bld_factors
  factors_is_built = .True.

 endif
end subroutine provide_factors

subroutine bld_factors
  use factors_mod
  use number_mod
    implicit none                                                   ! factors.irp.f:   7
  character*(7) :: irp_here = 'factors'                             ! factors.irp.f:   1
    integer :: i                                                    ! factors.irp.f:   8
    j=1                                                             ! factors.irp.f:  10
    do i=1,int(SQRT(float(number)))                                 ! factors.irp.f:  12
        if(MOD(number,i).eq.0)then                                  ! factors.irp.f:  13
         factors(j)=i                                               ! factors.irp.f:  14
         j=j+(1)                                                    ! factors.irp.f:  15
        endif                                                       ! factors.irp.f:  16
    enddo                                                           ! factors.irp.f:  17
    do i=1,j                                                        ! factors.irp.f:  18
        write(6,*)factors(i)                                        ! factors.irp.f:  19
    enddo                                                           ! factors.irp.f:  20
end subroutine bld_factors
