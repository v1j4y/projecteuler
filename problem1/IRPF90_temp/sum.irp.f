BEGIN_PROVIDER [integer, sum]
    implicit none
    BEGIN_DOC
    ! calculates the sum of the factors of
    ! two integers between 1 to limit
    END_DOC

    integer :: i,j
   sum=0
    do i=1,limit-1
        do j=1,nfact
            if(MOD(i,fact(j)).eq.0)then
                sum+=i
                EXIT
            endif
        enddo
    enddo

END_PROVIDER
