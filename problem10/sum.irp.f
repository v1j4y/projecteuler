BEGIN_PROVIDER [integer(kind=selected_int_kind(18)), sum]
    BEGIN_DOC
    ! sum of primes
    END_DOC

    implicit none
    integer :: i,sum1
    logical :: prim

    sum=5
    sum1=2
    do i=4,2000000
        prim=.FALSE.
        call is_prime(i,prim)
        if(prim) sum+=i
!       if(prim) write(6,*)sum
!       if(prim) sum1+=1
    enddo
!   write(6,*)sum1
END_PROVIDER
