BEGIN_PROVIDER [integer, fact, (nfact)]
    BEGIN_DOC
    ! enter the factors
    END_DOC

    implicit none
    integer :: i

    write(6,*)'enter',nfact,'integers'
    do i=1,nfact
        read(5,*)fact(i)
    enddo

END_PROVIDER
