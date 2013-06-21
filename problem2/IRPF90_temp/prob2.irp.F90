! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

program irp_program                                                   ! prob1:   0
 call prob1                                                           ! prob2.irp.f:   0
 call irp_finalize_1930907644()                                       ! prob2.irp.f:   0
end program                                                           ! prob2.irp.f:   0
subroutine prob1                                                      ! prob2.irp.f:   1
  use sum_mod
        implicit none                                                 ! prob2.irp.f:   3
  character*(5) :: irp_here = 'prob1'                                 ! prob2.irp.f:   1
  if (.not.sum_is_built) then
    call provide_sum
  endif
        write(6,*)sum                                                 ! prob2.irp.f:   5
end                                                                   ! prob2.irp.f:   7
