BEGIN_PROVIDER [integer(kind=SELECTED_INT_KIND(18)), trg_num, (10000)]
    BEGIN_DOC
    ! get triangular numbers 10000
    END_DOC

    implicit none
    integer :: i

    trg_num=0
    trg_num(1)=1
    do i=100,1000000
        trg_num(i/100)=i*(i+1)/2
    enddo
END_PROVIDER
