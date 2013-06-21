    program prob4

    implicit none

    integer :: i,j,number,k,ilim,jlim,palin(10000),maxpalin,cp,lim
    logical :: palindrome

    palindrome=.FALSE.
    maxpalin=0
    cp=0
    do i=999,100,-1
        do j=999,i,-1
            number=i*j
!           write(6,*)number
            call is_palindrome(number,palindrome)
!           write(6,*)palindrome
            if(palindrome)then
!               write(6,*)i*j
                EXIT
            endif
            if(palindrome)EXIT
        enddo
        if(palindrome)EXIT
    enddo
    ilim=i
    jlim=j
    palindrome=.FALSE.

    lim=MIN(ilim,jlim)
    lim=lim-100
    do i=999,lim,-1
        do j=999,j,-1
            number=i*j
            call is_palindrome(number,palindrome)
            if(palindrome)then
                cp+=1
                palin(cp)=i*j
            endif
        enddo
    enddo

    do i=1,cp
        if(maxpalin.le.palin(i))maxpalin=palin(i)
    enddo

    write(6,*)maxpalin


    end
