        subroutine across(i,j,prod)
        implicit none

        integer :: i,j,k,prod

        prod=1

        do k=0,3
            prod=prod*list(i+k,j+k)
        enddo

        return
        end
