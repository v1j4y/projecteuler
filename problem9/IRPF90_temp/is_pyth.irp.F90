! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

        subroutine is_pyth(i,j,k,pyth)                              ! is_pyth.irp.f:   1
        implicit none                                               ! is_pyth.irp.f:   3
  character*(7) :: irp_here = 'is_pyth'                             ! is_pyth.irp.f:   1
        integer :: i,j,k,pyt                                        ! is_pyth.irp.f:   4
        logical :: pyth                                             ! is_pyth.irp.f:   5
        pyt=k**2 + j**2                                             ! is_pyth.irp.f:   7
        if((i**2).eq.pyt)then                                       ! is_pyth.irp.f:   8
            pyth=.TRUE.                                             ! is_pyth.irp.f:   9
        else                                                        ! is_pyth.irp.f:  10
            pyth=.FALSE.                                            ! is_pyth.irp.f:  11
        endif                                                       ! is_pyth.irp.f:  12
        return                                                      ! is_pyth.irp.f:  14
end                                                                 ! is_pyth.irp.f:  16
