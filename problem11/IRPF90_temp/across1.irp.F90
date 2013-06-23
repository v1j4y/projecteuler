! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

        subroutine across1(i,j,prod)                                ! across1.irp.f:   1
  use list_mod
        implicit none                                               ! across1.irp.f:   2
  character*(7) :: irp_here = 'across1'                             ! across1.irp.f:   1
        integer :: i,j,k,prod                                       ! across1.irp.f:   4
  if (.not.list_is_built) then
    call provide_list
  endif
        prod=1                                                      ! across1.irp.f:   6
        do k=0,3                                                    ! across1.irp.f:   8
            prod=prod*list(i-k,j+k)                                 ! across1.irp.f:   9
        enddo                                                       ! across1.irp.f:  10
        return                                                      ! across1.irp.f:  12
end                                                                 ! across1.irp.f:  13
