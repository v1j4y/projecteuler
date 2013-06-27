subroutine irp_finalize_2055191370
 use sieve_mod
 use divisors_mod
  if (allocated(sieve)) then
    sieve_is_built = .False.
    deallocate(sieve)
  endif
end
