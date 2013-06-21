BEGIN_PROVIDER [integer, limit]
&BEGIN_PROVIDER [integer, nfact]
    BEGIN_DOC
    ! enter limit
    END_DOC
    write(6,*)'limit?'
    read(5,*)limit
    write(6,*)'nfact?'
    read(5,*)nfact

END_PROVIDER
