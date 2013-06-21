! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_maxpri
  use lim_mod
  use maxpri_mod
  implicit none
  character*(14) :: irp_here = 'provide_maxpri'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
  if (.not.lim_is_built) then
    call provide_lim
  endif
 if (.not.maxpri_is_built) then
  call bld_maxpri
  maxpri_is_built = .True.

 endif
end subroutine provide_maxpri

subroutine bld_maxpri
  use lim_mod
  use maxpri_mod
    implicit none                                                    ! maxpri.irp.f:   6
  character*(6) :: irp_here = 'maxpri'                               ! maxpri.irp.f:   1
    integer :: i,k                                                   ! maxpri.irp.f:   7
    logical :: pri                                                   ! maxpri.irp.f:   8
    maxpri=2                                                         ! maxpri.irp.f:  10
    pri=.TRUE.                                                       ! maxpri.irp.f:  11
    do i=4,lim                                                       ! maxpri.irp.f:  12
        do k=2,i-1                                                   ! maxpri.irp.f:  13
            if(MOD(i,k).eq.0) then                                   ! maxpri.irp.f:  14
pri=.FALSE.                                                          ! maxpri.irp.f:  14
  endif                                                              ! maxpri.irp.f:  14
        enddo                                                        ! maxpri.irp.f:  15
        if(pri)then                                                  ! maxpri.irp.f:  16
            maxpri=maxpri+1                                          ! maxpri.irp.f:  17
        endif                                                        ! maxpri.irp.f:  18
        pri=.TRUE.                                                   ! maxpri.irp.f:  19
    enddo                                                            ! maxpri.irp.f:  20
    write(6,*)'maxpri',maxpri                                        ! maxpri.irp.f:  22
end subroutine bld_maxpri
