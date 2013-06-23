        subroutine fact_num(number,num)

        implicit none
        integer :: i,num,j
        logical :: div,prim
        integer (kind=SELECTED_INT_KIND(18)) :: number

        num=1
        do i=2,int(SQRT(float(number)))
            if(MOD(number,i).eq.0.and.prim)then
                j=1
                div=.TRUE.
                do while(div)
                    j+=1
                    if(MOD(number,i**j).ne.0)then
                        div=.FALSE.
!                       write(6,*)j
                        EXIT
                    endif
                enddo
                num+=j
            endif
        enddo

        return
        end
