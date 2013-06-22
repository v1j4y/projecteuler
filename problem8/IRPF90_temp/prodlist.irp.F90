! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_prodlist
  use prodlist_mod
  use numlist_mod
  implicit none
  character*(16) :: irp_here = 'provide_prodlist'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
  if (.not.numlist_is_built) then
    call provide_numlist
  endif
 if (allocated (prodlist) ) then
  irp_dimensions_OK = .True.
  irp_dimensions_OK = irp_dimensions_OK.AND.(SIZE(prodlist,1)==(1000))
  if (.not.irp_dimensions_OK) then
   deallocate(prodlist,stat=irp_err)
   if (irp_err /= 0) then
     print *, irp_here//': Deallocation failed: prodlist'
     print *, ' size: (1000)'
   endif
   if ((1000>0)) then
    allocate(prodlist(1000),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: prodlist'
     print *, ' size: (1000)'
    endif
   endif
  endif
 else
   if ((1000>0)) then
    allocate(prodlist(1000),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: prodlist'
     print *, ' size: (1000)'
    endif
   endif
 endif
 if (.not.prodlist_is_built) then
  call bld_prodlist
  prodlist_is_built = .True.

 endif
end subroutine provide_prodlist

subroutine bld_prodlist
  use prodlist_mod
  use numlist_mod
    implicit none                                                  ! prodlist.irp.f:   6
  character*(8) :: irp_here = 'prodlist'                           ! prodlist.irp.f:   1
    integer :: i                                                   ! prodlist.irp.f:   7
    write(6,*)'in prodlist'                                        ! prodlist.irp.f:   9
    do i=1,1000                                                    ! prodlist.irp.f:  10
        prodlist(i)=numlist(i,1)*numlist(i,2)                      ! prodlist.irp.f:  11
        prodlist(i)=prodlist(i)*numlist(i,3)*numlist(i,4)*numlist(i,5) ! prodlist.irp.f:  12
    enddo                                                          ! prodlist.irp.f:  13
end subroutine bld_prodlist
