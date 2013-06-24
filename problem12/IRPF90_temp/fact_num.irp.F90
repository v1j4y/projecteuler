! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

        subroutine fact_num(number,num)                            ! fact_num.irp.f:   1
        implicit none                                              ! fact_num.irp.f:   3
  character*(8) :: irp_here = 'fact_num'                           ! fact_num.irp.f:   1
        integer :: i,num,j                                         ! fact_num.irp.f:   4
        logical :: div,prim                                        ! fact_num.irp.f:   5
        integer (kind=SELECTED_INT_KIND(18)) :: number             ! fact_num.irp.f:   6
        num=1                                                      ! fact_num.irp.f:   8
        do i=2,number                                              ! fact_num.irp.f:   9
            if(MOD(number,i).eq.0)then                             ! fact_num.irp.f:  10
                num=num+(1)                                        ! fact_num.irp.f:  11
            endif                                                  ! fact_num.irp.f:  12
        enddo                                                      ! fact_num.irp.f:  13
        do i=2,number+1                                            ! fact_num.irp.f:  15
            if(MOD(number,i).eq.0)then                             ! fact_num.irp.f:  16
                num=num+(1)                                        ! fact_num.irp.f:  17
            endif                                                  ! fact_num.irp.f:  18
        enddo                                                      ! fact_num.irp.f:  19
        return                                                     ! fact_num.irp.f:  21
end                                                                ! fact_num.irp.f:  22
