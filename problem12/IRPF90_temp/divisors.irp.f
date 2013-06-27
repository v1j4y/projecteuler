        subroutine divisors(num,ndiv)

        implicit none
        integer :: ndiv
        integer (kind=SELECTED_INT_KIND(18)) :: num
        integer (kind=SELECTED_INT_KIND(18)) :: i
        integer (kind=SELECTED_INT_KIND(18)) :: j

        sieve=.FALSE.

        i=2
        ndiv=0
!       write(6,*)'sdf'
        do i=2,num
            if(sieve(i))then
                CYCLE
            endif
            if(MOD(num,i).eq.0)then
                sieve(i)=.TRUE.
                ndiv+=1
                j=1
                do while ((i*j).le.num)
!               write(6,*)j,i*j
                    j+=1
                    if(MOD(num,i*j).eq.0 .and. (i*j).le.num .and. .not.sieve(i*j))then
                        sieve((i*j))=.TRUE.
                        ndiv+=1
!                       write(6,*)'in div',i,i*j,num
                    else
                        j=num
                    endif
                enddo
            endif
!           write(6,*)i,num,ndiv
        enddo

        return
        end
