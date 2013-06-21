! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

program irp_program                                                   ! prob6:   0
 call prob6                                                           ! prob6.irp.f:   0
 call irp_finalize_1954188261()                                       ! prob6.irp.f:   0
end program                                                           ! prob6.irp.f:   0
subroutine prob6                                                      ! prob6.irp.f:   1
  use sumsq_mod
  use sqsum_mod
    implicit none                                                     ! prob6.irp.f:   2
  character*(5) :: irp_here = 'prob6'                                 ! prob6.irp.f:   1
  if (.not.sumsq_is_built) then
    call provide_sumsq
  endif
  if (.not.sqsum_is_built) then
    call provide_sqsum
  endif
    write(6,*)sqsum-sumsq                                             ! prob6.irp.f:   4
end                                                                   ! prob6.irp.f:   6
