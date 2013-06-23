    subroutine down(i,j,prod)
    implicit none

    integer ::i,j,prod,k

    prod=1

    do k=0,3
        prod=prod*list(i+k,j)
    enddo

    return
    end
