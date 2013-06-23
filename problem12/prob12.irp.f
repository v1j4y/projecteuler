        program prob12

        implicit none
        integer ::i,num

        i=1
        do while (trg_num(i).ne.0)
            call fact_num(trg_num(i),num)
            if (num.ge.500)then
                write(6,*)trg_num(i)
                write(6,*)num
                write(6,*)i
                EXIT
            endif
            i+=1
        enddo

        end
