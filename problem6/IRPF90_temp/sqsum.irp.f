BEGIN_PROVIDER [integer, sqsum]
    BEGIN_DOC
    ! function calculates square of sum
    END_DOC

    implicit none

    sqsum=(n*(n+1)/2)*(n*(n+1)/2)

END_PROVIDER
