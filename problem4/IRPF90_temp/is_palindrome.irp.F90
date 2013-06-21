! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

    subroutine is_palindrome(number,palin)                    ! is_palindrome.irp.f:   1
    implicit none                                             ! is_palindrome.irp.f:   3
  character*(13) :: irp_here = 'is_palindrome'                ! is_palindrome.irp.f:   1
    logical :: palin                                          ! is_palindrome.irp.f:   4
    integer :: number,digit(1000),i,n1,j                      ! is_palindrome.irp.f:   5
    palin=.FALSE.                                             ! is_palindrome.irp.f:   7
    do i=1,1000                                               ! is_palindrome.irp.f:   8
    digit(i)=10                                               ! is_palindrome.irp.f:   9
    enddo                                                     ! is_palindrome.irp.f:  10
    i=0                                                       ! is_palindrome.irp.f:  12
    do while (number.gt.0)                                    ! is_palindrome.irp.f:  13
    n1=number-10*(number/10)                                  ! is_palindrome.irp.f:  15
    digit(i)=n1                                               ! is_palindrome.irp.f:  16
    number=number/10                                          ! is_palindrome.irp.f:  17
    i=i+(1)                                                   ! is_palindrome.irp.f:  18
    enddo                                                     ! is_palindrome.irp.f:  19
    palin=.TRUE.                                              ! is_palindrome.irp.f:  22
    do j=0,int((i-1)/2)                                       ! is_palindrome.irp.f:  23
        if(digit(j).ne.digit((i-1)-j))then                    ! is_palindrome.irp.f:  24
            palin=.FALSE.                                     ! is_palindrome.irp.f:  25
            EXIT                                              ! is_palindrome.irp.f:  26
        endif                                                 ! is_palindrome.irp.f:  27
    enddo                                                     ! is_palindrome.irp.f:  28
    return                                                    ! is_palindrome.irp.f:  30
end                                                           ! is_palindrome.irp.f:  31
