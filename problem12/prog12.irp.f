        program prog12

        implicit none
        integer :: sum,ndiv,trg_num,indiv
        integer (kind=SELECTED_INT_KIND(18)) :: i


        sum=0

!       do i=100,20000
        do i=10000,50000
            if((i*(i+1)/2).eq.1)then
                sum=0
            else
                sum=1
            endif

            trg_num=i*(i+1)/2
            if(MOD(i,2).eq.0)then
            call divisors((i/2),indiv)
            call divisors(i+1,ndiv)
            else
            call divisors(i,indiv)
            call divisors((i+1)/2,ndiv)
            endif

            sum=(indiv+1)*(ndiv+1)
!           write(6,*)i
            write(6,*)sum,trg_num
            if(sum.ge.500)then
                write(6,*)sum
                write(6,*)(i*(i+1)/2)
                EXIT
            endif
        enddo

        end

