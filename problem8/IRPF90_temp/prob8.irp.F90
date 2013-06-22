! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

program irp_program                                                   ! prob8:   0
 call prob8                                                           ! prob8.irp.f:   0
 call irp_finalize_302331284()                                        ! prob8.irp.f:   0
end program                                                           ! prob8.irp.f:   0
subroutine prob8                                                      ! prob8.irp.f:   1
  use maxprod_mod
    implicit none                                                     ! prob8.irp.f:   3
  character*(5) :: irp_here = 'prob8'                                 ! prob8.irp.f:   1
  if (.not.maxprod_is_built) then
    call provide_maxprod
  endif
    write(6,*)'in prob8'                                              ! prob8.irp.f:   5
    write(6,*)maxprod                                                 ! prob8.irp.f:   6
end                                                                   ! prob8.irp.f:   8
