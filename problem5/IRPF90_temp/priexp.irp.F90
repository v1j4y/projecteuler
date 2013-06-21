! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_priexp
  use priexp_mod
  use lim_mod
  use prim_mod
  use maxpri_mod
  implicit none
  character*(14) :: irp_here = 'provide_priexp'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
  if (.not.lim_is_built) then
    call provide_lim
  endif
  if (.not.prim_is_built) then
    call provide_prim
  endif
  if (.not.maxpri_is_built) then
    call provide_maxpri
  endif
 if (allocated (priexp) ) then
  irp_dimensions_OK = .True.
  irp_dimensions_OK = irp_dimensions_OK.AND.(SIZE(priexp,1)==(maxpri))
  if (.not.irp_dimensions_OK) then
   deallocate(priexp,stat=irp_err)
   if (irp_err /= 0) then
     print *, irp_here//': Deallocation failed: priexp'
     print *, ' size: (maxpri)'
   endif
   if ((maxpri>0)) then
    allocate(priexp(maxpri),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: priexp'
     print *, ' size: (maxpri)'
    endif
   endif
  endif
 else
   if ((maxpri>0)) then
    allocate(priexp(maxpri),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: priexp'
     print *, ' size: (maxpri)'
    endif
   endif
 endif
 if (.not.priexp_is_built) then
  call bld_priexp
  priexp_is_built = .True.

 endif
end subroutine provide_priexp

subroutine bld_priexp
  use priexp_mod
  use lim_mod
  use prim_mod
  use maxpri_mod
    implicit none                                                    ! priexp.irp.f:   5
  character*(6) :: irp_here = 'priexp'                               ! priexp.irp.f:   1
    integer :: i,j,nprim,diff                                        ! priexp.irp.f:   7
    logical :: yw                                                    ! priexp.irp.f:   8
    yw=.FALSE.                                                       ! priexp.irp.f:  10
    diff=1                                                           ! priexp.irp.f:  11
    do i=1,maxpri                                                    ! priexp.irp.f:  12
        do while(diff.ge.0)                                          ! priexp.irp.f:  13
            diff=lim - (prim(i)**nprim)                              ! priexp.irp.f:  14
            nprim=nprim+(1)                                          ! priexp.irp.f:  15
        enddo                                                        ! priexp.irp.f:  16
        priexp(i)=nprim-2                                            ! priexp.irp.f:  17
        nprim=0                                                      ! priexp.irp.f:  18
        diff=1                                                       ! priexp.irp.f:  19
    enddo                                                            ! priexp.irp.f:  20
    if(yw) then                                                      ! priexp.irp.f:  21
write(6,*)(priexp(i),i=1,maxpri)                                     ! priexp.irp.f:  21
  endif                                                              ! priexp.irp.f:  21
end subroutine bld_priexp
