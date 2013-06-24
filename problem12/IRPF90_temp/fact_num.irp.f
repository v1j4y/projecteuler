        subroutine fact_num(number,num)

        implicit none
        integer :: i,num,j
        logical :: div,prim
        integer (kind=SELECTED_INT_KIND(18)) :: number

        num=1
        do i=2,number
            if(MOD(number,i).eq.0)then
                num+=1
            endif
        enddo

        do i=2,number+1
            if(MOD(number,i).eq.0)then
                num+=1
            endif
        enddo

        return
        end
