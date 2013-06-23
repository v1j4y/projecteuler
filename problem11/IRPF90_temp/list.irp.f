BEGIN_PROVIDER [integer, list, (20,20)]
    BEGIN_DOC
    ! store data
    END_DOC

    implicit none
    integer :: i,j

    do i=1,20
!       do j=1,20
            read(5,*)(list(i,j),j=1,20)
!       enddo
    enddo

!   do i=1,20
!       write(6,*)(list(i,j),j=1,20)
!   enddo

END_PROVIDER
