    subroutine is_palindrome(number,palin)

    implicit none
    logical :: palin
    integer :: number,digit(1000),i,n1,j

    palin=.FALSE.
    do i=1,1000
    digit(i)=10
    enddo

    i=0
    do while (number.gt.0)

    n1=number-10*(number/10)
    digit(i)=n1
    number=number/10
    i+=1
    enddo

!   write(6,*)(digit(j),j=i-1,0,-1)
    palin=.TRUE.
    do j=0,int((i-1)/2)
        if(digit(j).ne.digit((i-1)-j))then
            palin=.FALSE.
            EXIT
        endif
    enddo

    return
    end
