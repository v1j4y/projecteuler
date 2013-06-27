! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

program irp_program                                                  ! prog12:   0
 call prog12                                                         ! prog12.irp.f:   0
 call irp_finalize_2055191370()                                      ! prog12.irp.f:   0
end program                                                          ! prog12.irp.f:   0
subroutine prog12                                                    ! prog12.irp.f:   1
        implicit none                                                ! prog12.irp.f:   3
  character*(6) :: irp_here = 'prog12'                               ! prog12.irp.f:   1
        integer :: sum,ndiv,trg_num,indiv                            ! prog12.irp.f:   4
        integer (kind=SELECTED_INT_KIND(18)) :: i                    ! prog12.irp.f:   5
        sum=0                                                        ! prog12.irp.f:   8
        do i=10000,50000                                             ! prog12.irp.f:  11
            if((i*(i+1)/2).eq.1)then                                 ! prog12.irp.f:  12
                sum=0                                                ! prog12.irp.f:  13
            else                                                     ! prog12.irp.f:  14
                sum=1                                                ! prog12.irp.f:  15
            endif                                                    ! prog12.irp.f:  16
            trg_num=i*(i+1)/2                                        ! prog12.irp.f:  18
            if(MOD(i,2).eq.0)then                                    ! prog12.irp.f:  19
            call divisors((i/2),indiv)                               ! prog12.irp.f:  20
            call divisors(i+1,ndiv)                                  ! prog12.irp.f:  21
            else                                                     ! prog12.irp.f:  22
            call divisors(i,indiv)                                   ! prog12.irp.f:  23
            call divisors((i+1)/2,ndiv)                              ! prog12.irp.f:  24
            endif                                                    ! prog12.irp.f:  25
            sum=(indiv+1)*(ndiv+1)                                   ! prog12.irp.f:  27
            write(6,*)sum,trg_num                                    ! prog12.irp.f:  29
            if(sum.ge.500)then                                       ! prog12.irp.f:  30
                write(6,*)sum                                        ! prog12.irp.f:  31
                write(6,*)(i*(i+1)/2)                                ! prog12.irp.f:  32
                EXIT                                                 ! prog12.irp.f:  33
            endif                                                    ! prog12.irp.f:  34
        enddo                                                        ! prog12.irp.f:  35
end                                                                  ! prog12.irp.f:  37
