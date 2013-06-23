subroutine irp_finalize_1519516010
 use down_mod
 use maxprod_mod
 use across_mod
 use across1_mod
 use prodlist_mod
 use list_mod
 use up_mod
  if (allocated(prodlist)) then
    prodlist_is_built = .False.
    deallocate(prodlist)
  endif
  if (allocated(list)) then
    list_is_built = .False.
    deallocate(list)
  endif
end
