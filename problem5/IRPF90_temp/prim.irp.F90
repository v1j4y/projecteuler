! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_prim
  use lim_mod
  use prim_mod
  use maxpri_mod
  implicit none
  character*(12) :: irp_here = 'provide_prim'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
  if (.not.lim_is_built) then
    call provide_lim
  endif
  if (.not.maxpri_is_built) then
    call provide_maxpri
  endif
 if (allocated (prim) ) then
  irp_dimensions_OK = .True.
  irp_dimensions_OK = irp_dimensions_OK.AND.(SIZE(prim,1)==(maxpri))
  if (.not.irp_dimensions_OK) then
   deallocate(prim,stat=irp_err)
   if (irp_err /= 0) then
     print *, irp_here//': Deallocation failed: prim'
     print *, ' size: (maxpri)'
   endif
   if ((maxpri>0)) then
    allocate(prim(maxpri),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: prim'
     print *, ' size: (maxpri)'
    endif
   endif
  endif
 else
   if ((maxpri>0)) then
    allocate(prim(maxpri),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: prim'
     print *, ' size: (maxpri)'
    endif
   endif
 endif
 if (.not.prim_is_built) then
  call bld_prim
  prim_is_built = .True.

 endif
end subroutine provide_prim

subroutine bld_prim
  use lim_mod
  use prim_mod
  use maxpri_mod
    implicit none                                                      ! prim.irp.f:   2
  character*(4) :: irp_here = 'prim'                                   ! prim.irp.f:   1
    integer :: i,k,mpri                                                ! prim.irp.f:   7
    logical :: pri,yw                                                  ! prim.irp.f:   8
    pri=.TRUE.                                                         ! prim.irp.f:  10
    yw=.FALSE.                                                         ! prim.irp.f:  11
    mpri=2                                                             ! prim.irp.f:  12
    prim(1)=2                                                          ! prim.irp.f:  13
    prim(2)=3                                                          ! prim.irp.f:  14
    do i=4,lim                                                         ! prim.irp.f:  15
        do k=2,i-1                                                     ! prim.irp.f:  16
            if(MOD(i,k).eq.0) then                                     ! prim.irp.f:  17
pri=.FALSE.                                                            ! prim.irp.f:  17
  endif                                                                ! prim.irp.f:  17
        enddo                                                          ! prim.irp.f:  18
        if(pri)then                                                    ! prim.irp.f:  19
            mpri=mpri+1                                                ! prim.irp.f:  20
            prim(mpri)=i                                               ! prim.irp.f:  21
        endif                                                          ! prim.irp.f:  22
        pri=.TRUE.                                                     ! prim.irp.f:  23
    enddo                                                              ! prim.irp.f:  24
    if(yw) then                                                        ! prim.irp.f:  26
write(6,*)(prim(i),i=1,mpri)                                           ! prim.irp.f:  26
  endif                                                                ! prim.irp.f:  26
end subroutine bld_prim
