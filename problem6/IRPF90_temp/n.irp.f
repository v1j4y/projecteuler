BEGIN_PROVIDER [integer, n]
    BEGIN_DOC
    ! provides n
    END_DOC

    write(6,*)'n?'
    read(5,*)n

END_PROVIDER

