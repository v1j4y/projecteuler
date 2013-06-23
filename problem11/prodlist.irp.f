BEGIN_PROVIDER [integer, prodlist, (2000)]
    BEGIN_DOC
    ! find all the products
    END_DOC

    implicit none
    integer :: i,j,prod,k

!   write(6,*)'in prodlist'
    prodlist=0
    k=0
    do i=1,17
        do j=1,20
            k+=1
            call down(i,j,prod)
            prodlist(k)=prod
        enddo
    enddo

    do i=1,20
        do j=1,17
            k+=1
            call up(i,j,prod)
            prodlist(k)=prod
        enddo
    enddo

    do i=1,17
        do j=1,17
            k+=1
            call across(i,j,prod)
            prodlist(k)=prod
        enddo
    enddo

    do i=17,1,-1
        do j=1,17
            k+=1
            call across1(i,j,prod)
            prodlist(k)=prod
        enddo
    enddo
    write(6,*)k
END_PROVIDER
