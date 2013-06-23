! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_trg_num
  use trg_num_mod
  implicit none
  character*(15) :: irp_here = 'provide_trg_num'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
 if (allocated (trg_num) ) then
  irp_dimensions_OK = .True.
  irp_dimensions_OK = irp_dimensions_OK.AND.(SIZE(trg_num,1)==(10000))
  if (.not.irp_dimensions_OK) then
   deallocate(trg_num,stat=irp_err)
   if (irp_err /= 0) then
     print *, irp_here//': Deallocation failed: trg_num'
     print *, ' size: (10000)'
   endif
   if ((10000>0)) then
    allocate(trg_num(10000),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: trg_num'
     print *, ' size: (10000)'
    endif
   endif
  endif
 else
   if ((10000>0)) then
    allocate(trg_num(10000),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: trg_num'
     print *, ' size: (10000)'
    endif
   endif
 endif
 if (.not.trg_num_is_built) then
  call bld_trg_num
  trg_num_is_built = .True.

 endif
end subroutine provide_trg_num

subroutine bld_trg_num
  use trg_num_mod
    implicit none                                                   ! trg_num.irp.f:   6
  character*(7) :: irp_here = 'trg_num'                             ! trg_num.irp.f:   1
    integer :: i                                                    ! trg_num.irp.f:   7
    trg_num=0                                                       ! trg_num.irp.f:   9
    trg_num(1)=1                                                    ! trg_num.irp.f:  10
    do i=100,1000000                                                ! trg_num.irp.f:  11
        trg_num(i/100)=i*(i+1)/2                                    ! trg_num.irp.f:  12
    enddo                                                           ! trg_num.irp.f:  13
end subroutine bld_trg_num
