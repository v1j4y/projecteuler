! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

program irp_program                                                  ! prob10:   0
 call prob10                                                         ! prob10.irp.f:   0
 call irp_finalize_764856832()                                       ! prob10.irp.f:   0
end program                                                          ! prob10.irp.f:   0
subroutine prob10                                                    ! prob10.irp.f:   1
  use sum_mod
        implicit none                                                ! prob10.irp.f:   3
  character*(6) :: irp_here = 'prob10'                               ! prob10.irp.f:   1
  if (.not.sum_is_built) then
    call provide_sum
  endif
        write(6,*)sum                                                ! prob10.irp.f:   5
end                                                                  ! prob10.irp.f:   7
