! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

program irp_program                                                   ! prob1:   0
 call prob1                                                           ! prob1.irp.f:   0
 call irp_finalize_367124922()                                        ! prob1.irp.f:   0
end program                                                           ! prob1.irp.f:   0
subroutine prob1                                                      ! prob1.irp.f:   1
  use sum_mod
        implicit none                                                 ! prob1.irp.f:   3
  character*(5) :: irp_here = 'prob1'                                 ! prob1.irp.f:   1
  if (.not.sum_is_built) then
    call provide_sum
  endif
        write(6,*)sum                                                 ! prob1.irp.f:   5
end                                                                   ! prob1.irp.f:   7
