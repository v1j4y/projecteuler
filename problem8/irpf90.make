SRC += IRPF90_temp/irp_stack.irp.F90 IRPF90_temp/irp_touches.irp.F90 IRPF90_temp/prodlist.irp.F90 IRPF90_temp/prodlist.irp.module.F90 IRPF90_temp/numlist.irp.F90 IRPF90_temp/numlist.irp.module.F90 IRPF90_temp/prob8.irp.F90 IRPF90_temp/prob8.irp.module.F90 IRPF90_temp/maxprod.irp.F90 IRPF90_temp/maxprod.irp.module.F90 IRPF90_temp/charenum.irp.F90 IRPF90_temp/charenum.irp.module.F90 IRPF90_temp/number.irp.F90 IRPF90_temp/number.irp.module.F90
OBJ += IRPF90_temp/irp_stack.irp.o IRPF90_temp/prodlist.irp.o IRPF90_temp/prodlist.irp.module.o IRPF90_temp/numlist.irp.o IRPF90_temp/numlist.irp.module.o IRPF90_temp/maxprod.irp.o IRPF90_temp/maxprod.irp.module.o IRPF90_temp/charenum.irp.o IRPF90_temp/charenum.irp.module.o IRPF90_temp/number.irp.o IRPF90_temp/number.irp.module.o
OBJ1 = $(patsubst %, IRPF90_temp/%,$(notdir $(OBJ))) IRPF90_temp/irp_touches.irp.o 
ALL = prob8
ALL_OBJ = prob8.irp.module.o prob8.irp.o
ALL_OBJ1 = $(patsubst %, IRPF90_temp/%,$(notdir $(ALL_OBJ)))
all:$(ALL)
	@$(MAKE) -s move
prob8: IRPF90_temp/prob8.irp.o IRPF90_temp/prob8.irp.module.o $(OBJ1)
	$(FC) -o $@ IRPF90_temp/$@.irp.o IRPF90_temp/$@.irp.module.o $(OBJ1) $(LIB)
	@$(MAKE) -s move
IRPF90_temp/prodlist.irp.o: IRPF90_temp/prodlist.irp.module.o  IRPF90_temp/numlist.irp.module.o 
IRPF90_temp/numlist.irp.o: IRPF90_temp/numlist.irp.module.o  IRPF90_temp/number.irp.module.o 
IRPF90_temp/prob8.irp.o: IRPF90_temp/prob8.irp.module.o  IRPF90_temp/maxprod.irp.module.o 
IRPF90_temp/maxprod.irp.o: IRPF90_temp/maxprod.irp.module.o  IRPF90_temp/prodlist.irp.module.o 
IRPF90_temp/charenum.irp.o: IRPF90_temp/charenum.irp.module.o  
IRPF90_temp/number.irp.o: IRPF90_temp/number.irp.module.o  IRPF90_temp/charenum.irp.module.o 
IRPF90_temp/irp_touches.irp.o:  IRPF90_temp/prodlist.irp.o IRPF90_temp/prodlist.irp.o  IRPF90_temp/numlist.irp.o IRPF90_temp/numlist.irp.o  IRPF90_temp/maxprod.irp.o IRPF90_temp/maxprod.irp.o  IRPF90_temp/charenum.irp.o IRPF90_temp/charenum.irp.o  IRPF90_temp/number.irp.o IRPF90_temp/number.irp.o
IRPF90_temp/%.irp.module.o: IRPF90_temp/%.irp.module.F90
	$(FC) $(FCFLAGS) -c IRPF90_temp/$*.irp.module.F90 -o IRPF90_temp/$*.irp.module.o
IRPF90_temp/%.irp.o: IRPF90_temp/%.irp.module.o IRPF90_temp/%.irp.F90
	$(FC) $(FCFLAGS) -c IRPF90_temp/$*.irp.F90 -o IRPF90_temp/$*.irp.o
IRPF90_temp/%.irp.o: IRPF90_temp/%.irp.F90
	$(FC) $(FCFLAGS) -c IRPF90_temp/$*.irp.F90 -o IRPF90_temp/$*.irp.o
IRPF90_temp/%.o: %.F90
	$(FC) $(FCFLAGS) -c $*.F90 -o IRPF90_temp/$*.o
IRPF90_temp/%.o: %.f90
	$(FC) $(FCFLAGS) -c $*.f90 -o IRPF90_temp/$*.o
IRPF90_temp/%.o: %.f
	$(FC) $(FCFLAGS) -c $*.f -o IRPF90_temp/$*.o
IRPF90_temp/%.o: %.F
	$(FC) $(FCFLAGS) -c $*.F -o IRPF90_temp/$*.o
IRPF90_temp/%.irp.F90: irpf90.make

move:
	@mv -f *.mod IRPF90_temp/ 2> /dev/null | DO_NOTHING=

clean:
	rm -rf $(EXE) $(OBJ1) $(ALL_OBJ1) $(ALL)

veryclean:
	- $(MAKE) clean

	- rm -rf IRPF90_temp/ IRPF90_man/ irpf90.make irpf90_variables dist

