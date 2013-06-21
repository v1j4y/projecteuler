! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

program irp_program                                                   ! prog5:   0
 call prog5                                                           ! prog5.irp.f:   0
 call irp_finalize_311174561()                                        ! prog5.irp.f:   0
end program                                                           ! prog5.irp.f:   0
subroutine prog5                                                      ! prog5.irp.f:   1
  use mult_mod
    implicit none                                                     ! prog5.irp.f:   3
  character*(5) :: irp_here = 'prog5'                                 ! prog5.irp.f:   1
  if (.not.mult_is_built) then
    call provide_mult
  endif
    write(6,*)mult                                                    ! prog5.irp.f:   5
end                                                                   ! prog5.irp.f:   7
