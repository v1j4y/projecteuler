SRC += IRPF90_temp/irp_stack.irp.F90 IRPF90_temp/irp_touches.irp.F90 IRPF90_temp/n.irp.F90 IRPF90_temp/n.irp.module.F90 IRPF90_temp/prob6.irp.F90 IRPF90_temp/prob6.irp.module.F90 IRPF90_temp/sumsq.irp.F90 IRPF90_temp/sumsq.irp.module.F90 IRPF90_temp/sqsum.irp.F90 IRPF90_temp/sqsum.irp.module.F90
OBJ += IRPF90_temp/irp_stack.irp.o IRPF90_temp/n.irp.o IRPF90_temp/n.irp.module.o IRPF90_temp/sumsq.irp.o IRPF90_temp/sumsq.irp.module.o IRPF90_temp/sqsum.irp.o IRPF90_temp/sqsum.irp.module.o
OBJ1 = $(patsubst %, IRPF90_temp/%,$(notdir $(OBJ))) IRPF90_temp/irp_touches.irp.o 
ALL = prob6
ALL_OBJ = prob6.irp.module.o prob6.irp.o
ALL_OBJ1 = $(patsubst %, IRPF90_temp/%,$(notdir $(ALL_OBJ)))
all:$(ALL)
	@$(MAKE) -s move
prob6: IRPF90_temp/prob6.irp.o IRPF90_temp/prob6.irp.module.o $(OBJ1)
	$(FC) -o $@ IRPF90_temp/$@.irp.o IRPF90_temp/$@.irp.module.o $(OBJ1) $(LIB)
	@$(MAKE) -s move
IRPF90_temp/n.irp.o: IRPF90_temp/n.irp.module.o  
IRPF90_temp/prob6.irp.o: IRPF90_temp/prob6.irp.module.o  IRPF90_temp/sumsq.irp.module.o  IRPF90_temp/sqsum.irp.module.o 
IRPF90_temp/sumsq.irp.o: IRPF90_temp/sumsq.irp.module.o  IRPF90_temp/n.irp.module.o 
IRPF90_temp/sqsum.irp.o: IRPF90_temp/sqsum.irp.module.o  IRPF90_temp/n.irp.module.o 
IRPF90_temp/irp_touches.irp.o:  IRPF90_temp/n.irp.o IRPF90_temp/n.irp.o  IRPF90_temp/sumsq.irp.o IRPF90_temp/sumsq.irp.o  IRPF90_temp/sqsum.irp.o IRPF90_temp/sqsum.irp.o
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

