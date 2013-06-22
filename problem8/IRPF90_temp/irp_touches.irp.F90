subroutine irp_finalize_302331284
 use prodlist_mod
 use numlist_mod
 use maxprod_mod
 use charenum_mod
 use number_mod
  if (allocated(charenum)) then
    charenum_is_built = .False.
    deallocate(charenum)
  endif
  if (allocated(prodlist)) then
    prodlist_is_built = .False.
    deallocate(prodlist)
  endif
  if (allocated(number)) then
    number_is_built = .False.
    deallocate(number)
  endif
  if (allocated(numlist)) then
    numlist_is_built = .False.
    deallocate(numlist)
  endif
end
