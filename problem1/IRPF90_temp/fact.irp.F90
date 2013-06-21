! -*- F90 -*-
!
!-----------------------------------------------!
! This file was generated with the irpf90 tool. !
!                                               !
!           DO NOT MODIFY IT BY HAND            !
!-----------------------------------------------!

subroutine provide_fact
  use limit_mod
  use fact_mod
  implicit none
  character*(12) :: irp_here = 'provide_fact'
  integer                   :: irp_err 
  logical                   :: irp_dimensions_OK
  if (.not.limit_is_built) then
    call provide_limit
  endif
 if (allocated (fact) ) then
  irp_dimensions_OK = .True.
  irp_dimensions_OK = irp_dimensions_OK.AND.(SIZE(fact,1)==(nfact))
  if (.not.irp_dimensions_OK) then
   deallocate(fact,stat=irp_err)
   if (irp_err /= 0) then
     print *, irp_here//': Deallocation failed: fact'
     print *, ' size: (nfact)'
   endif
   if ((nfact>0)) then
    allocate(fact(nfact),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: fact'
     print *, ' size: (nfact)'
    endif
   endif
  endif
 else
   if ((nfact>0)) then
    allocate(fact(nfact),stat=irp_err)
    if (irp_err /= 0) then
     print *, irp_here//': Allocation failed: fact'
     print *, ' size: (nfact)'
    endif
   endif
 endif
 if (.not.fact_is_built) then
  call bld_fact
  fact_is_built = .True.

 endif
end subroutine provide_fact

subroutine bld_fact
  use limit_mod
  use fact_mod
    implicit none                                                      ! fact.irp.f:   6
  character*(4) :: irp_here = 'fact'                                   ! fact.irp.f:   1
    integer :: i                                                       ! fact.irp.f:   7
    write(6,*)'enter',nfact,'integers'                                 ! fact.irp.f:   9
    do i=1,nfact                                                       ! fact.irp.f:  10
        read(5,*)fact(i)                                               ! fact.irp.f:  11
    enddo                                                              ! fact.irp.f:  12
end subroutine bld_fact
