BEGIN_PROVIDER [integer, lgpf]
    implicit none
    BEGIN_DOC
    ! serches for largest factor
    END_DOC

    integer :: i,k
    logical :: prim

    lgpf=0
    prim=.TRUE.
    do i=1,j
        do k=2,factors(i)-1
            if(MOD(factors(i),k).eq.0)prim=.FALSE.
        enddo

        if(lgpf.le.factors(i) .and. prim)lgpf=factors(i)

        prim=.TRUE.

    enddo

END_PROVIDER
