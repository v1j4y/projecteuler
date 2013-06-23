! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

program irp_program                                                  ! prob11:   0
 call prob11                                                         ! prob11.irp.f:   0
 call irp_finalize_1519516010()                                      ! prob11.irp.f:   0
end program                                                          ! prob11.irp.f:   0
subroutine prob11                                                    ! prob11.irp.f:   1
  use maxprod_mod
        implicit none                                                ! prob11.irp.f:   3
  character*(6) :: irp_here = 'prob11'                               ! prob11.irp.f:   1
  if (.not.maxprod_is_built) then
    call provide_maxprod
  endif
        write(6,*)maxprod                                            ! prob11.irp.f:   5
end                                                                  ! prob11.irp.f:   7
