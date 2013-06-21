    program prime

    implicit none

    integer :: i,countprim,findprim
    logical :: prim

    prim=.FALSE.
    countprim=0
    findprim=0
    i=2
    do while (findprim.ne.1)
        i+=1
        call is_prime(i,prim)
        if(prim)then
            countprim+=1
            if(countprim.eq.10000)then
                write(6,*)i
                findprim=1
            endif
        endif
    enddo

    end

