subroutine irp_finalize_311174561
 use mult_mod
 use prim_mod
 use lim_mod
 use maxpri_mod
 use priexp_mod
  if (allocated(prim)) then
    prim_is_built = .False.
    deallocate(prim)
  endif
  if (allocated(priexp)) then
    priexp_is_built = .False.
    deallocate(priexp)
  endif
end
