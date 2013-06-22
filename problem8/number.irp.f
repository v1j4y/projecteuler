BEGIN_PROVIDER [integer, number,(1000)]
    BEGIN_DOC
    ! read number
    END_DOC

    integer :: i,j,k

    k=0
    do i=1,20
        do j=1,50
            k+=1
            number(k)=charenum(j,i)
        enddo
    enddo

END_PROVIDER
