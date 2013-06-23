        subroutine up(i,j,prod)
        implicit none

        integer :: i,j,prod,k

        prod=1

        do k=0,3
            prod=prod*list(i,j+k)
        enddo

        return
        end
