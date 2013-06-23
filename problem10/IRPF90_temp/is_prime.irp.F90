! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

        subroutine is_prime(i,prim)                                ! is_prime.irp.f:   1
        implicit none                                              ! is_prime.irp.f:   3
  character*(8) :: irp_here = 'is_prime'                           ! is_prime.irp.f:   1
        integer :: i,j                                             ! is_prime.irp.f:   4
        logical :: prim                                            ! is_prime.irp.f:   5
        prim=.TRUE.                                                ! is_prime.irp.f:   7
        j=2                                                        ! is_prime.irp.f:   8
        do while (j.le.int(SQRT(float(i))))                        ! is_prime.irp.f:   9
            if(MOD(i,j).eq.0)then                                  ! is_prime.irp.f:  10
                prim=.FALSE.                                       ! is_prime.irp.f:  11
                EXIT                                               ! is_prime.irp.f:  12
            endif                                                  ! is_prime.irp.f:  13
            j=j+(1)                                                ! is_prime.irp.f:  14
        enddo                                                      ! is_prime.irp.f:  15
        return                                                     ! is_prime.irp.f:  17
end                                                                ! is_prime.irp.f:  18
