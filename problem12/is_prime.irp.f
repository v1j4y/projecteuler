    subroutine is_prime(i,prim)

    implicit none
    integer ::i,j
    logical ::prim

    prim=.TRUE.
    do j=2,i-1
        if(MOD(i,j).eq.0)then
        prim=.FALSE.
        EXIT
        endif
    enddo

    return
    end
