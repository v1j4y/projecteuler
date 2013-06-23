! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

        subroutine up(i,j,prod)                                          ! up.irp.f:   1
  use list_mod
        implicit none                                                    ! up.irp.f:   2
  character*(2) :: irp_here = 'up'                                       ! up.irp.f:   1
        integer :: i,j,prod,k                                            ! up.irp.f:   4
  if (.not.list_is_built) then
    call provide_list
  endif
        prod=1                                                           ! up.irp.f:   6
        do k=0,3                                                         ! up.irp.f:   8
            prod=prod*list(i,j+k)                                        ! up.irp.f:   9
        enddo                                                            ! up.irp.f:  10
        return                                                           ! up.irp.f:  12
end                                                                      ! up.irp.f:  13
