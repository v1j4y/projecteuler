        program prob12

        implicit none
        integer ::i,num

        i=1
        do while (.TRUE.)
            call fact_num(i,num)
            if (num.ge.500)then
                write(6,*)i*(i+1)/2
                write(6,*)num
                write(6,*)i
                EXIT
            endif
            i+=1
        enddo

        end
