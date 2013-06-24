! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

program irp_program                                                  ! prob12:   0
 call prob12                                                         ! prob12.irp.f:   0
 call irp_finalize_1013405484()                                      ! prob12.irp.f:   0
end program                                                          ! prob12.irp.f:   0
subroutine prob12                                                    ! prob12.irp.f:   1
        implicit none                                                ! prob12.irp.f:   3
  character*(6) :: irp_here = 'prob12'                               ! prob12.irp.f:   1
        integer ::i,num                                              ! prob12.irp.f:   4
        i=1                                                          ! prob12.irp.f:   6
        do while (.TRUE.)                                            ! prob12.irp.f:   7
            call fact_num(i,num)                                     ! prob12.irp.f:   8
            if (num.ge.500)then                                      ! prob12.irp.f:   9
                write(6,*)i*(i+1)/2                                  ! prob12.irp.f:  10
                write(6,*)num                                        ! prob12.irp.f:  11
                write(6,*)i                                          ! prob12.irp.f:  12
                EXIT                                                 ! prob12.irp.f:  13
            endif                                                    ! prob12.irp.f:  14
            i=i+(1)                                                  ! prob12.irp.f:  15
        enddo                                                        ! prob12.irp.f:  16
end                                                                  ! prob12.irp.f:  18
