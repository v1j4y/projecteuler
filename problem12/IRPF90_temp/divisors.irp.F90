! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

        subroutine divisors(num,ndiv)                              ! divisors.irp.f:   1
  use sieve_mod
        implicit none                                              ! divisors.irp.f:   3
  character*(8) :: irp_here = 'divisors'                           ! divisors.irp.f:   1
        integer :: ndiv                                            ! divisors.irp.f:   4
        integer (kind=SELECTED_INT_KIND(18)) :: num                ! divisors.irp.f:   5
        integer (kind=SELECTED_INT_KIND(18)) :: i                  ! divisors.irp.f:   6
        integer (kind=SELECTED_INT_KIND(18)) :: j                  ! divisors.irp.f:   7
  if (.not.sieve_is_built) then
    call provide_sieve
  endif
        sieve=.FALSE.                                              ! divisors.irp.f:   9
        i=2                                                        ! divisors.irp.f:  11
        ndiv=0                                                     ! divisors.irp.f:  12
        do i=2,num                                                 ! divisors.irp.f:  14
            if(sieve(i))then                                       ! divisors.irp.f:  15
                CYCLE                                              ! divisors.irp.f:  16
            endif                                                  ! divisors.irp.f:  17
            if(MOD(num,i).eq.0)then                                ! divisors.irp.f:  18
                sieve(i)=.TRUE.                                    ! divisors.irp.f:  19
                ndiv=ndiv+(1)                                      ! divisors.irp.f:  20
                j=1                                                ! divisors.irp.f:  21
                do while ((i*j).le.num)                            ! divisors.irp.f:  22
                    j=j+(1)                                        ! divisors.irp.f:  24
                    if(MOD(num,i*j).eq.0 .and. (i*j).le.num .and. .not.sieve(i*j))then ! divisors.irp.f:  25
                        sieve((i*j))=.TRUE.                        ! divisors.irp.f:  26
                        ndiv=ndiv+(1)                              ! divisors.irp.f:  27
                    else                                           ! divisors.irp.f:  29
                        j=num                                      ! divisors.irp.f:  30
                    endif                                          ! divisors.irp.f:  31
                enddo                                              ! divisors.irp.f:  32
            endif                                                  ! divisors.irp.f:  33
        enddo                                                      ! divisors.irp.f:  35
        return                                                     ! divisors.irp.f:  37
end                                                                ! divisors.irp.f:  38
