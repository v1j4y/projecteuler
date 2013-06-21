BEGIN_PROVIDER [integer, prim, (maxpri)]
    implicit none
    BEGIN_DOC
    ! stores all primes from 1 to lim
    END_DOC

    integer :: i,k,mpri
    logical :: pri,yw

    pri=.TRUE.
    yw=.FALSE.
    mpri=2
    prim(1)=2
    prim(2)=3
    do i=4,lim
        do k=2,i-1
            if(MOD(i,k).eq.0)pri=.FALSE.
        enddo
        if(pri)then
            mpri=mpri+1
            prim(mpri)=i
        endif
        pri=.TRUE.
    enddo

    if(yw)write(6,*)(prim(i),i=1,mpri)

END_PROVIDER
