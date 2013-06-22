BEGIN_PROVIDER [integer, charenum, (50,20)]
    BEGIN_DOC
    ! reads number as character
    END_DOC

    integer :: i,j

    write(6,*)'number'

    open(unit=10,file='inp')

    do i=1,20
!       do j=1,50
            read(5,'(50i1)')charenum(:,i)
!       enddo
    enddo

    close(10)

END_PROVIDER
