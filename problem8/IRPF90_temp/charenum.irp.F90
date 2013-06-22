! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_charenum
  use charenum_mod
  implicit none
  character*(16) :: irp_here = 'provide_charenum'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
 if (allocated (charenum) ) then
  irp_dimensions_OK = .True.
  irp_dimensions_OK = irp_dimensions_OK.AND.(SIZE(charenum,1)==(50))
  irp_dimensions_OK = irp_dimensions_OK.AND.(SIZE(charenum,2)==(20))
  if (.not.irp_dimensions_OK) then
   deallocate(charenum,stat=irp_err)
   if (irp_err /= 0) then
     print *, irp_here//': Deallocation failed: charenum'
     print *, ' size: (50,20)'
   endif
   if ((50>0).and.(20>0)) then
    allocate(charenum(50,20),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: charenum'
     print *, ' size: (50,20)'
    endif
   endif
  endif
 else
   if ((50>0).and.(20>0)) then
    allocate(charenum(50,20),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: charenum'
     print *, ' size: (50,20)'
    endif
   endif
 endif
 if (.not.charenum_is_built) then
  call bld_charenum
  charenum_is_built = .True.

 endif
end subroutine provide_charenum

subroutine bld_charenum
  use charenum_mod
  character*(8) :: irp_here = 'charenum'                           ! charenum.irp.f:   1
    integer :: i,j                                                 ! charenum.irp.f:   6
    write(6,*)'number'                                             ! charenum.irp.f:   8
    open(unit=10,file='inp')                                       ! charenum.irp.f:  10
    do i=1,20                                                      ! charenum.irp.f:  12
            read(5,'(50i1)')charenum(:,i)                          ! charenum.irp.f:  14
    enddo                                                          ! charenum.irp.f:  16
    close(10)                                                      ! charenum.irp.f:  18
end subroutine bld_charenum
