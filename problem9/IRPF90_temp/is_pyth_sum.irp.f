        subroutine is_pyth_sum(i,j,k,pythsum)

        implicit none
        integer :: i,j,k,sum
        logical :: pythsum,pyth

        call is_pyth(i,j,k,pyth)
!       write(6,*)'pyth',pyth
        if(pyth)then
            sum=i+j+k
!           write(6,*)sum
            if(sum.eq.1000)then
                pythsum=.TRUE.
            else
                pythsum=.FALSE.
            endif
        else
            pythsum=.FALSE.
        endif

        return
        end
