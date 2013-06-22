        subroutine is_pyth(i,j,k,pyth)

        implicit none
        integer :: i,j,k,pyt
        logical :: pyth

        pyt=k**2 + j**2
        if((i**2).eq.pyt)then
            pyth=.TRUE.
        else
            pyth=.FALSE.
        endif

        return

        end
