BEGIN_PROVIDER [integer, prodlist, (1000)]
    BEGIN_DOC
    ! find all the products
    END_DOC

    implicit none
    integer :: i

    write(6,*)'in prodlist'
    do i=1,1000
        prodlist(i)=numlist(i,1)*numlist(i,2)
        prodlist(i)=prodlist(i)*numlist(i,3)*numlist(i,4)*numlist(i,5)
    enddo
END_PROVIDER
