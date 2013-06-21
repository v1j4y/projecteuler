subroutine irp_finalize_68190058
 use lgpf_mod
 use factors_mod
 use number_mod
  if (allocated(factors)) then
    factors_is_built = .False.
    deallocate(factors)
  endif
end
