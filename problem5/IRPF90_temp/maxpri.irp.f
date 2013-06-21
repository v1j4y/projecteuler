BEGIN_PROVIDER [integer, maxpri]
    BEGIN_DOC
    ! find number of primes
    END_DOC

    implicit none
    integer :: i,k
    logical :: pri

    maxpri=2
    pri=.TRUE.
    do i=4,lim
        do k=2,i-1
            if(MOD(i,k).eq.0)pri=.FALSE.
        enddo
        if(pri)then
            maxpri=maxpri+1
        endif
        pri=.TRUE.
    enddo

    write(6,*)'maxpri',maxpri

END_PROVIDER
