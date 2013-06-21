BEGIN_PROVIDER [integer, limit]
&BEGIN_PROVIDER [integer, term1]
&BEGIN_PROVIDER [integer, term2]
    BEGIN_DOC
    ! enter limit
    END_DOC
    write(6,*)'limit?'
    read(5,*)limit
    write(6,*)'term1?'
    read(5,*)term1
    write(6,*)'term2?'
    read(5,*)term2

END_PROVIDER
