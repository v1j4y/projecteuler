! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_numlist
  use numlist_mod
  implicit none
  character*(15) :: irp_here = 'provide_numlist'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
 if (allocated (numlist) ) then
  irp_dimensions_OK = .True.
  irp_dimensions_OK = irp_dimensions_OK.AND.(SIZE(numlist,1)==(1000))
  irp_dimensions_OK = irp_dimensions_OK.AND.(SIZE(numlist,2)==(5))
  if (.not.irp_dimensions_OK) then
   deallocate(numlist,stat=irp_err)
   if (irp_err /= 0) then
     print *, irp_here//': Deallocation failed: numlist'
     print *, ' size: (1000,5)'
   endif
   if ((1000>0).and.(5>0)) then
    allocate(numlist(1000,5),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: numlist'
     print *, ' size: (1000,5)'
    endif
   endif
  endif
 else
   if ((1000>0).and.(5>0)) then
    allocate(numlist(1000,5),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: numlist'
     print *, ' size: (1000,5)'
    endif
   endif
 endif
 if (.not.numlist_is_built) then
  call bld_numlist
  numlist_is_built = .True.

 endif
end subroutine provide_numlist

subroutine bld_numlist
  use numlist_mod
  use number_mod
    implicit none                                                   ! numlist.irp.f:   6
  character*(7) :: irp_here = 'numlist'                             ! numlist.irp.f:   1
    integer :: i,isfive                                             ! numlist.irp.f:   7
    write(6,*)'in numlist'                                          ! numlist.irp.f:   9
    isfive = 0                                                      ! numlist.irp.f:  10
    i = 1                                                           ! numlist.irp.f:  11
    do while(i.le.995)                                              ! numlist.irp.f:  12
        if(isfive.eq.5)then                                         ! numlist.irp.f:  13
            isfive=0                                                ! numlist.irp.f:  14
            i=i+(1)                                                 ! numlist.irp.f:  15
        else                                                        ! numlist.irp.f:  16
  if (.not.number_is_built) then
    call provide_number
  endif
            numlist(i,isfive+1)=number(i+isfive)                    ! numlist.irp.f:  17
            isfive=isfive+(1)                                       ! numlist.irp.f:  18
        endif                                                       ! numlist.irp.f:  19
    enddo                                                           ! numlist.irp.f:  20
    write(6,*)(numlist(3,i),i=1,5)                                  ! numlist.irp.f:  21
end subroutine bld_numlist
