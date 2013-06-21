BEGIN_PROVIDER [integer, lim]
    implicit none
    BEGIN_DOC
    ! reads limit
    END_DOC

    write(6,*)'lim?'
    read(5,*)lim

END_PROVIDER
