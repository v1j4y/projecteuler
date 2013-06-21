BEGIN_PROVIDER [integer, priexp, (maxpri)]
    BEGIN_DOC
    ! exponent of each prime
    END_DOC
    implicit none

    integer :: i,j,nprim,diff
    logical :: yw

    yw=.FALSE.
    diff=1
    do i=1,maxpri
        do while(diff.ge.0)
            diff=lim - (prim(i)**nprim)
            nprim+=1
        enddo
        priexp(i)=nprim-2
        nprim=0
        diff=1
    enddo
    if(yw)write(6,*)(priexp(i),i=1,maxpri)

END_PROVIDER
