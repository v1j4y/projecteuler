BEGIN_PROVIDER [integer, mult]
    BEGIN_DOC
    ! smallest multiple divisible
    END_DOC

    implicit none

    integer ::i,sum

    mult=1
    do i=1,maxpri
        mult=mult*(prim(i)**priexp(i))
    enddo

END_PROVIDER
