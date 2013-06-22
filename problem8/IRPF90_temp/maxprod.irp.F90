! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_maxprod
  use prodlist_mod
  use maxprod_mod
  implicit none
  character*(15) :: irp_here = 'provide_maxprod'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
  if (.not.prodlist_is_built) then
    call provide_prodlist
  endif
 if (.not.maxprod_is_built) then
  call bld_maxprod
  maxprod_is_built = .True.

 endif
end subroutine provide_maxprod

subroutine bld_maxprod
  use prodlist_mod
  use maxprod_mod
    implicit none                                                   ! maxprod.irp.f:   6
  character*(7) :: irp_here = 'maxprod'                             ! maxprod.irp.f:   1
    integer :: i                                                    ! maxprod.irp.f:   7
    write(6,*)'in maxprod'                                          ! maxprod.irp.f:   9
    maxprod=0                                                       ! maxprod.irp.f:  10
    do i=1,1000                                                     ! maxprod.irp.f:  11
        if(prodlist(i).ge.maxprod) then                             ! maxprod.irp.f:  12
maxprod=prodlist(i)                                                 ! maxprod.irp.f:  12
  endif                                                             ! maxprod.irp.f:  12
    enddo                                                           ! maxprod.irp.f:  13
end subroutine bld_maxprod
