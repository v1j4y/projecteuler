BEGIN_PROVIDER [integer, sum]
    implicit none
    BEGIN_DOC
    ! calculates the sum of the factors of
    ! two integers between 1 to limit
    END_DOC

    integer :: i,j,tmp
   sum=0

    do while (term1.le.limit .or. term2.le.limit)

        write(6,*)term1,term2

        if(MOD(term1,2).eq.0)sum=sum+term1

        if(MOD(term2,2).eq.0)sum=sum+term2

        term1+=term2
        term2+=term1

    enddo

        if(MOD(term1,2).eq.0)sum=sum+term1

        if(MOD(term2,2).eq.0)sum=sum+term2


END_PROVIDER
