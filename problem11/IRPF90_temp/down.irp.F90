! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

    subroutine down(i,j,prod)                                          ! down.irp.f:   1
  use list_mod
    implicit none                                                      ! down.irp.f:   2
  character*(4) :: irp_here = 'down'                                   ! down.irp.f:   1
    integer ::i,j,prod,k                                               ! down.irp.f:   4
  if (.not.list_is_built) then
    call provide_list
  endif
    prod=1                                                             ! down.irp.f:   6
    do k=0,3                                                           ! down.irp.f:   8
        prod=prod*list(i+k,j)                                          ! down.irp.f:   9
    enddo                                                              ! down.irp.f:  10
    return                                                             ! down.irp.f:  12
end                                                                    ! down.irp.f:  13
