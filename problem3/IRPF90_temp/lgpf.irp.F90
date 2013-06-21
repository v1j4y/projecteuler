! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_lgpf
  use lgpf_mod
  use factors_mod
  implicit none
  character*(12) :: irp_here = 'provide_lgpf'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
  if (.not.factors_is_built) then
    call provide_factors
  endif
 if (.not.lgpf_is_built) then
  call bld_lgpf
  lgpf_is_built = .True.

 endif
end subroutine provide_lgpf

subroutine bld_lgpf
  use lgpf_mod
  use factors_mod
    implicit none                                                      ! lgpf.irp.f:   2
  character*(4) :: irp_here = 'lgpf'                                   ! lgpf.irp.f:   1
    integer :: i,k                                                     ! lgpf.irp.f:   7
    logical :: prim                                                    ! lgpf.irp.f:   8
    lgpf=0                                                             ! lgpf.irp.f:  10
    prim=.TRUE.                                                        ! lgpf.irp.f:  11
    do i=1,j                                                           ! lgpf.irp.f:  12
        do k=2,factors(i)-1                                            ! lgpf.irp.f:  13
            if(MOD(factors(i),k).eq.0) then                            ! lgpf.irp.f:  14
prim=.FALSE.                                                           ! lgpf.irp.f:  14
  endif                                                                ! lgpf.irp.f:  14
        enddo                                                          ! lgpf.irp.f:  15
        if(lgpf.le.factors(i) .and. prim) then                         ! lgpf.irp.f:  17
lgpf=factors(i)                                                        ! lgpf.irp.f:  17
  endif                                                                ! lgpf.irp.f:  17
        prim=.TRUE.                                                    ! lgpf.irp.f:  19
    enddo                                                              ! lgpf.irp.f:  21
end subroutine bld_lgpf
