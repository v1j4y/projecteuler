        subroutine fact_num(number,num)

        implicit none
        integer :: number,num,i

        num=0
        do i=1,number
            if(MOD(number,i).eq.0)num+=1
        enddo

        end
