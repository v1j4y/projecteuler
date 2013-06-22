! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_number
  use number_mod
  use charenum_mod
  implicit none
  character*(14) :: irp_here = 'provide_number'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
  if (.not.charenum_is_built) then
    call provide_charenum
  endif
 if (allocated (number) ) then
  irp_dimensions_OK = .True.
  irp_dimensions_OK = irp_dimensions_OK.AND.(SIZE(number,1)==(1000))
  if (.not.irp_dimensions_OK) then
   deallocate(number,stat=irp_err)
   if (irp_err /= 0) then
     print *, irp_here//': Deallocation failed: number'
     print *, ' size: (1000)'
   endif
   if ((1000>0)) then
    allocate(number(1000),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: number'
     print *, ' size: (1000)'
    endif
   endif
  endif
 else
   if ((1000>0)) then
    allocate(number(1000),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: number'
     print *, ' size: (1000)'
    endif
   endif
 endif
 if (.not.number_is_built) then
  call bld_number
  number_is_built = .True.

 endif
end subroutine provide_number

subroutine bld_number
  use number_mod
  use charenum_mod
  character*(6) :: irp_here = 'number'                               ! number.irp.f:   1
    integer :: i,j,k                                                 ! number.irp.f:   6
    k=0                                                              ! number.irp.f:   8
    do i=1,20                                                        ! number.irp.f:   9
        do j=1,50                                                    ! number.irp.f:  10
            k=k+(1)                                                  ! number.irp.f:  11
            number(k)=charenum(j,i)                                  ! number.irp.f:  12
        enddo                                                        ! number.irp.f:  13
    enddo                                                            ! number.irp.f:  14
end subroutine bld_number
