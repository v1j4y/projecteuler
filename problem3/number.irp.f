BEGIN_PROVIDER [integer (kind=selected_int_kind(18)), number]
    implicit none
    BEGIN_DOC
    ! enter limit
    END_DOC
    write(6,*)'number?'
    read(5,*)number

END_PROVIDER
