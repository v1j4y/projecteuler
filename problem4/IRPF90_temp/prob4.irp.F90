! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

program irp_program                                                   ! prob4:   0
 call prob4                                                           ! prob4.irp.f:   0
 call irp_finalize_1703613751()                                       ! prob4.irp.f:   0
end program                                                           ! prob4.irp.f:   0
subroutine prob4                                                      ! prob4.irp.f:   1
    implicit none                                                     ! prob4.irp.f:   3
  character*(5) :: irp_here = 'prob4'                                 ! prob4.irp.f:   1
    integer :: i,j,number,k,ilim,jlim,palin(10000),maxpalin,cp,lim    ! prob4.irp.f:   5
    logical :: palindrome                                             ! prob4.irp.f:   6
    palindrome=.FALSE.                                                ! prob4.irp.f:   8
    maxpalin=0                                                        ! prob4.irp.f:   9
    cp=0                                                              ! prob4.irp.f:  10
    do i=999,100,-1                                                   ! prob4.irp.f:  11
        do j=999,i,-1                                                 ! prob4.irp.f:  12
            number=i*j                                                ! prob4.irp.f:  13
            call is_palindrome(number,palindrome)                     ! prob4.irp.f:  15
            if(palindrome)then                                        ! prob4.irp.f:  17
                EXIT                                                  ! prob4.irp.f:  19
            endif                                                     ! prob4.irp.f:  20
            if(palindrome) then                                       ! prob4.irp.f:  21
EXIT                                                                  ! prob4.irp.f:  21
  endif                                                               ! prob4.irp.f:  21
        enddo                                                         ! prob4.irp.f:  22
        if(palindrome) then                                           ! prob4.irp.f:  23
EXIT                                                                  ! prob4.irp.f:  23
  endif                                                               ! prob4.irp.f:  23
    enddo                                                             ! prob4.irp.f:  24
    ilim=i                                                            ! prob4.irp.f:  25
    jlim=j                                                            ! prob4.irp.f:  26
    palindrome=.FALSE.                                                ! prob4.irp.f:  27
    lim=MIN(ilim,jlim)                                                ! prob4.irp.f:  29
    lim=lim-100                                                       ! prob4.irp.f:  30
    do i=999,lim,-1                                                   ! prob4.irp.f:  31
        do j=999,j,-1                                                 ! prob4.irp.f:  32
            number=i*j                                                ! prob4.irp.f:  33
            call is_palindrome(number,palindrome)                     ! prob4.irp.f:  34
            if(palindrome)then                                        ! prob4.irp.f:  35
                cp=cp+(1)                                             ! prob4.irp.f:  36
                palin(cp)=i*j                                         ! prob4.irp.f:  37
            endif                                                     ! prob4.irp.f:  38
        enddo                                                         ! prob4.irp.f:  39
    enddo                                                             ! prob4.irp.f:  40
    do i=1,cp                                                         ! prob4.irp.f:  42
        if(maxpalin.le.palin(i)) then                                 ! prob4.irp.f:  43
maxpalin=palin(i)                                                     ! prob4.irp.f:  43
  endif                                                               ! prob4.irp.f:  43
    enddo                                                             ! prob4.irp.f:  44
    write(6,*)maxpalin                                                ! prob4.irp.f:  46
end                                                                   ! prob4.irp.f:  49
