! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_sqsum
  use n_mod
  use sqsum_mod
  implicit none
  character*(13) :: irp_here = 'provide_sqsum'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
  if (.not.n_is_built) then
    call provide_n
  endif
 if (.not.sqsum_is_built) then
  call bld_sqsum
  sqsum_is_built = .True.

 endif
end subroutine provide_sqsum

subroutine bld_sqsum
  use n_mod
  use sqsum_mod
    implicit none                                                     ! sqsum.irp.f:   6
  character*(5) :: irp_here = 'sqsum'                                 ! sqsum.irp.f:   1
    sqsum=(n*(n+1)/2)*(n*(n+1)/2)                                     ! sqsum.irp.f:   8
end subroutine bld_sqsum
