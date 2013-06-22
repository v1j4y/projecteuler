BEGIN_PROVIDER [integer, numlist, (1000,5)]
    BEGIN_DOC
    ! find all 5 consecutive numbers
    END_DOC

    implicit none
    integer :: i,isfive

    write(6,*)'in numlist'
    isfive = 0
    i = 1
    do while(i.le.995)
        if(isfive.eq.5)then
            isfive=0
            i+=1
        else
            numlist(i,isfive+1)=number(i+isfive)
            isfive+=1
        endif
    enddo
    write(6,*)(numlist(3,i),i=1,5)
END_PROVIDER
