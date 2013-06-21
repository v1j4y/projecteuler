! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

program irp_program                                                   ! prime:   0
 call prime                                                           ! prime.irp.f:   0
 call irp_finalize_58571635()                                         ! prime.irp.f:   0
end program                                                           ! prime.irp.f:   0
subroutine prime                                                      ! prime.irp.f:   1
    implicit none                                                     ! prime.irp.f:   3
  character*(5) :: irp_here = 'prime'                                 ! prime.irp.f:   1
    integer :: i,countprim,findprim                                   ! prime.irp.f:   5
    logical :: prim                                                   ! prime.irp.f:   6
    prim=.FALSE.                                                      ! prime.irp.f:   8
    countprim=0                                                       ! prime.irp.f:   9
    findprim=0                                                        ! prime.irp.f:  10
    i=2                                                               ! prime.irp.f:  11
    do while (findprim.ne.1)                                          ! prime.irp.f:  12
        i=i+(1)                                                       ! prime.irp.f:  13
        call is_prime(i,prim)                                         ! prime.irp.f:  14
        if(prim)then                                                  ! prime.irp.f:  15
            countprim=countprim+(1)                                   ! prime.irp.f:  16
            if(countprim.eq.10000)then                                ! prime.irp.f:  17
                write(6,*)i                                           ! prime.irp.f:  18
                findprim=1                                            ! prime.irp.f:  19
            endif                                                     ! prime.irp.f:  20
        endif                                                         ! prime.irp.f:  21
    enddo                                                             ! prime.irp.f:  22
end                                                                   ! prime.irp.f:  24
