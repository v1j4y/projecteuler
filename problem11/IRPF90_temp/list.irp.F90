! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_list
  use list_mod
  implicit none
  character*(12) :: irp_here = 'provide_list'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
 if (allocated (list) ) then
  irp_dimensions_OK = .True.
  irp_dimensions_OK = irp_dimensions_OK.AND.(SIZE(list,1)==(20))
  irp_dimensions_OK = irp_dimensions_OK.AND.(SIZE(list,2)==(20))
  if (.not.irp_dimensions_OK) then
   deallocate(list,stat=irp_err)
   if (irp_err /= 0) then
     print *, irp_here//': Deallocation failed: list'
     print *, ' size: (20,20)'
   endif
   if ((20>0).and.(20>0)) then
    allocate(list(20,20),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: list'
     print *, ' size: (20,20)'
    endif
   endif
  endif
 else
   if ((20>0).and.(20>0)) then
    allocate(list(20,20),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: list'
     print *, ' size: (20,20)'
    endif
   endif
 endif
 if (.not.list_is_built) then
  call bld_list
  list_is_built = .True.

 endif
end subroutine provide_list

subroutine bld_list
  use list_mod
    implicit none                                                      ! list.irp.f:   6
  character*(4) :: irp_here = 'list'                                   ! list.irp.f:   1
    integer :: i,j                                                     ! list.irp.f:   7
    do i=1,20                                                          ! list.irp.f:   9
            read(5,*)(list(i,j),j=1,20)                                ! list.irp.f:  11
    enddo                                                              ! list.irp.f:  13
end subroutine bld_list
