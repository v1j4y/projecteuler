subroutine irp_finalize_367124922
 use fact_mod
 use sum_mod
 use limit_mod
  if (allocated(fact)) then
    fact_is_built = .False.
    deallocate(fact)
  endif
end
