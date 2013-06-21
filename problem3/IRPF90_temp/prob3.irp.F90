! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

program irp_program                                                   ! prob3:   0
 call prob3                                                           ! prob3.irp.f:   0
 call irp_finalize_68190058()                                         ! prob3.irp.f:   0
end program                                                           ! prob3.irp.f:   0
subroutine prob3                                                      ! prob3.irp.f:   1
  use lgpf_mod
        implicit none                                                 ! prob3.irp.f:   3
  character*(5) :: irp_here = 'prob3'                                 ! prob3.irp.f:   1
  if (.not.lgpf_is_built) then
    call provide_lgpf
  endif
        write(6,*)lgpf                                                ! prob3.irp.f:   5
end                                                                   ! prob3.irp.f:   7
