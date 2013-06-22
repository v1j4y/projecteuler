! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_prod
  use prod_mod
  implicit none
  character*(12) :: irp_here = 'provide_prod'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
 if (.not.prod_is_built) then
  call bld_prod
  prod_is_built = .True.

 endif
end subroutine provide_prod

subroutine bld_prod
  use prod_mod
    implicit none                                                      ! prod.irp.f:   6
  character*(4) :: irp_here = 'prod'                                   ! prod.irp.f:   1
    integer ::i,j,k                                                    ! prod.irp.f:   7
    logical :: pythsum                                                 ! prod.irp.f:   8
    do i=1,1000                                                        ! prod.irp.f:  10
        do j=1,i                                                       ! prod.irp.f:  11
            do k=1,j                                                   ! prod.irp.f:  12
                call is_pyth_sum(i,j,k,pythsum)                        ! prod.irp.f:  13
                if(pythsum)then                                        ! prod.irp.f:  15
                    prod=i*j*k                                         ! prod.irp.f:  16
                    EXIT                                               ! prod.irp.f:  17
                endif                                                  ! prod.irp.f:  18
            enddo                                                      ! prod.irp.f:  19
            if(pythsum) then                                           ! prod.irp.f:  20
EXIT                                                                   ! prod.irp.f:  20
  endif                                                                ! prod.irp.f:  20
        enddo                                                          ! prod.irp.f:  21
        if(pythsum) then                                               ! prod.irp.f:  22
EXIT                                                                   ! prod.irp.f:  22
  endif                                                                ! prod.irp.f:  22
    enddo                                                              ! prod.irp.f:  23
end subroutine bld_prod
