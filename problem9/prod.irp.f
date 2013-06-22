BEGIN_PROVIDER [integer, prod]
    BEGIN_DOC
    ! product of numbers
    END_DOC

    implicit none
    integer ::i,j,k
    logical :: pythsum

    do i=1,1000
        do j=1,i
            do k=1,j
                call is_pyth_sum(i,j,k,pythsum)
!               write(6,*)pythsum
                if(pythsum)then
                    prod=i*j*k
                    EXIT
                endif
            enddo
            if(pythsum)EXIT
        enddo
        if(pythsum)EXIT
    enddo

END_PROVIDER
