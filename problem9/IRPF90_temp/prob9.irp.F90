! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

program irp_program                                                   ! prob9:   0
 call prob9                                                           ! prob9.irp.f:   0
 call irp_finalize_1694631170()                                       ! prob9.irp.f:   0
end program                                                           ! prob9.irp.f:   0
subroutine prob9                                                      ! prob9.irp.f:   1
  use prod_mod
        implicit none                                                 ! prob9.irp.f:   3
  character*(5) :: irp_here = 'prob9'                                 ! prob9.irp.f:   1
  if (.not.prod_is_built) then
    call provide_prod
  endif
        write(6,*)prod                                                ! prob9.irp.f:   5
end                                                                   ! prob9.irp.f:   7
