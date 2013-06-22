! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

        subroutine is_pyth_sum(i,j,k,pythsum)                   ! is_pyth_sum.irp.f:   1
        implicit none                                           ! is_pyth_sum.irp.f:   3
  character*(11) :: irp_here = 'is_pyth_sum'                    ! is_pyth_sum.irp.f:   1
        integer :: i,j,k,sum                                    ! is_pyth_sum.irp.f:   4
        logical :: pythsum,pyth                                 ! is_pyth_sum.irp.f:   5
        call is_pyth(i,j,k,pyth)                                ! is_pyth_sum.irp.f:   7
        if(pyth)then                                            ! is_pyth_sum.irp.f:   9
            sum=i+j+k                                           ! is_pyth_sum.irp.f:  10
            if(sum.eq.1000)then                                 ! is_pyth_sum.irp.f:  12
                pythsum=.TRUE.                                  ! is_pyth_sum.irp.f:  13
            else                                                ! is_pyth_sum.irp.f:  14
                pythsum=.FALSE.                                 ! is_pyth_sum.irp.f:  15
            endif                                               ! is_pyth_sum.irp.f:  16
        else                                                    ! is_pyth_sum.irp.f:  17
            pythsum=.FALSE.                                     ! is_pyth_sum.irp.f:  18
        endif                                                   ! is_pyth_sum.irp.f:  19
        return                                                  ! is_pyth_sum.irp.f:  21
end                                                             ! is_pyth_sum.irp.f:  22
