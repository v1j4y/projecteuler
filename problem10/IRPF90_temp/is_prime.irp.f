        subroutine is_prime(i,prim)

        implicit none
        integer :: i,j
        logical :: prim

        prim=.TRUE.
        j=2
        do while (j.le.int(SQRT(float(i))))
            if(MOD(i,j).eq.0)then
                prim=.FALSE.
                EXIT
            endif
            j+=1
        enddo

        return
        end

