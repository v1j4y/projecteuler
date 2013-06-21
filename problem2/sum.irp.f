BEGIN_PROVIDER [integer, sum]
    implicit none
    BEGIN_DOC
    ! calculates the sum of the factors of
    ! two integers between 1 to limit
    END_DOC

    integer :: i,j,tmp
   sum=0

    if(MOD(term1,2).eq.0)then
        sum+=(term1)
    endif

    if(MOD(term2,2).eq.0)then
        sum+=(term2)
    endif

    if(MOD(term1,2).ne.0 .and. MOD(term2,2).ne.0)then
        sum+=(term1+term2)
    endif

    do while (term1.le.limit .or. term2.le.limit)

        write(6,*)term1,term2

        term1+=term2
        term2+=term1

        if(MOD(term1,2).ne.0 .and. MOD(term2,2).ne.0)then
            sum+=(term1+term2)
        endif


    enddo

END_PROVIDER
