subroutine irp_finalize_1013405484
 use fact_num_mod
 use trg_num_mod
 use is_prime_mod
  if (allocated(trg_num)) then
    trg_num_is_built = .False.
    deallocate(trg_num)
  endif
end
