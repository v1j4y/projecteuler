BEGIN_PROVIDER [integer, maxprod]
    BEGIN_DOC
    ! sort product list for maxprod
    END_DOC

    implicit none
    integer :: i

    write(6,*)'in maxprod'
    maxprod=0
    do i=1,1000
        if(prodlist(i).ge.maxprod)maxprod=prodlist(i)
    enddo

END_PROVIDER
