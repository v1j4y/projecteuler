! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

        subroutine across(i,j,prod)                                  ! across.irp.f:   1
  use list_mod
        implicit none                                                ! across.irp.f:   2
  character*(6) :: irp_here = 'across'                               ! across.irp.f:   1
        integer :: i,j,k,prod                                        ! across.irp.f:   4
  if (.not.list_is_built) then
    call provide_list
  endif
        prod=1                                                       ! across.irp.f:   6
        do k=0,3                                                     ! across.irp.f:   8
            prod=prod*list(i+k,j+k)                                  ! across.irp.f:   9
        enddo                                                        ! across.irp.f:  10
        return                                                       ! across.irp.f:  12
end                                                                  ! across.irp.f:  13
