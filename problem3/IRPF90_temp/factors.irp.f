BEGIN_PROVIDER [integer, factors, (100000)]
&BEGIN_PROVIDER [integer, j]
    BEGIN_DOC
    ! stores factors
    END_DOC

    implicit none
    integer :: i

    j=1

    do i=1,int(SQRT(float(number)))
        if(MOD(number,i).eq.0)then
         factors(j)=i
         j+=1
        endif
    enddo
    do i=1,j
        write(6,*)factors(i)
    enddo

END_PROVIDER
