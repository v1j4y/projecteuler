! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_prodlist
  use prodlist_mod
  implicit none
  character*(16) :: irp_here = 'provide_prodlist'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
 if (allocated (prodlist) ) then
  irp_dimensions_OK = .True.
  irp_dimensions_OK = irp_dimensions_OK.AND.(SIZE(prodlist,1)==(2000))
  if (.not.irp_dimensions_OK) then
   deallocate(prodlist,stat=irp_err)
   if (irp_err /= 0) then
     print *, irp_here//': Deallocation failed: prodlist'
     print *, ' size: (2000)'
   endif
   if ((2000>0)) then
    allocate(prodlist(2000),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: prodlist'
     print *, ' size: (2000)'
    endif
   endif
  endif
 else
   if ((2000>0)) then
    allocate(prodlist(2000),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: prodlist'
     print *, ' size: (2000)'
    endif
   endif
 endif
 if (.not.prodlist_is_built) then
  call bld_prodlist
  prodlist_is_built = .True.

 endif
end subroutine provide_prodlist

subroutine bld_prodlist
  use list_mod
  use prodlist_mod
    implicit none                                                  ! prodlist.irp.f:   6
  character*(8) :: irp_here = 'prodlist'                           ! prodlist.irp.f:   1
    integer :: i,j,prod,k                                          ! prodlist.irp.f:   7
    prodlist=0                                                     ! prodlist.irp.f:  10
    k=0                                                            ! prodlist.irp.f:  11
    do i=1,17                                                      ! prodlist.irp.f:  12
        do j=1,20                                                  ! prodlist.irp.f:  13
            k=k+(1)                                                ! prodlist.irp.f:  14
            call down(i,j,prod)                                    ! prodlist.irp.f:  15
            prodlist(k)=prod                                       ! prodlist.irp.f:  16
        enddo                                                      ! prodlist.irp.f:  17
    enddo                                                          ! prodlist.irp.f:  18
    do i=1,20                                                      ! prodlist.irp.f:  20
        do j=1,17                                                  ! prodlist.irp.f:  21
            k=k+(1)                                                ! prodlist.irp.f:  22
            call up(i,j,prod)                                      ! prodlist.irp.f:  23
            prodlist(k)=prod                                       ! prodlist.irp.f:  24
        enddo                                                      ! prodlist.irp.f:  25
    enddo                                                          ! prodlist.irp.f:  26
    do i=1,17                                                      ! prodlist.irp.f:  28
        do j=1,17                                                  ! prodlist.irp.f:  29
            k=k+(1)                                                ! prodlist.irp.f:  30
            call across(i,j,prod)                                  ! prodlist.irp.f:  31
            prodlist(k)=prod                                       ! prodlist.irp.f:  32
        enddo                                                      ! prodlist.irp.f:  33
    enddo                                                          ! prodlist.irp.f:  34
    do i=17,1,-1                                                   ! prodlist.irp.f:  36
        do j=1,17                                                  ! prodlist.irp.f:  37
            k=k+(1)                                                ! prodlist.irp.f:  38
            call across1(i,j,prod)                                 ! prodlist.irp.f:  39
            prodlist(k)=prod                                       ! prodlist.irp.f:  40
        enddo                                                      ! prodlist.irp.f:  41
    enddo                                                          ! prodlist.irp.f:  42
    write(6,*)k                                                    ! prodlist.irp.f:  43
end subroutine bld_prodlist
