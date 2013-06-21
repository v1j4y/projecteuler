SRC += IRPF90_temp/irp_stack.irp.F90 IRPF90_temp/irp_touches.irp.F90 IRPF90_temp/mult.irp.F90 IRPF90_temp/mult.irp.module.F90 IRPF90_temp/prim.irp.F90 IRPF90_temp/prim.irp.module.F90 IRPF90_temp/lim.irp.F90 IRPF90_temp/lim.irp.module.F90 IRPF90_temp/maxpri.irp.F90 IRPF90_temp/maxpri.irp.module.F90 IRPF90_temp/priexp.irp.F90 IRPF90_temp/priexp.irp.module.F90 IRPF90_temp/prog5.irp.F90 IRPF90_temp/prog5.irp.module.F90
OBJ += IRPF90_temp/irp_stack.irp.o IRPF90_temp/mult.irp.o IRPF90_temp/mult.irp.module.o IRPF90_temp/prim.irp.o IRPF90_temp/prim.irp.module.o IRPF90_temp/lim.irp.o IRPF90_temp/lim.irp.module.o IRPF90_temp/maxpri.irp.o IRPF90_temp/maxpri.irp.module.o IRPF90_temp/priexp.irp.o IRPF90_temp/priexp.irp.module.o
OBJ1 = $(patsubst %, IRPF90_temp/%,$(notdir $(OBJ))) IRPF90_temp/irp_touches.irp.o 
ALL = prog5
ALL_OBJ = prog5.irp.module.o prog5.irp.o
ALL_OBJ1 = $(patsubst %, IRPF90_temp/%,$(notdir $(ALL_OBJ)))
all:$(ALL)
	@$(MAKE) -s move
prog5: IRPF90_temp/prog5.irp.o IRPF90_temp/prog5.irp.module.o $(OBJ1)
	$(FC) -o $@ IRPF90_temp/$@.irp.o IRPF90_temp/$@.irp.module.o $(OBJ1) $(LIB)
	@$(MAKE) -s move
IRPF90_temp/mult.irp.o: IRPF90_temp/mult.irp.module.o  IRPF90_temp/prim.irp.module.o  IRPF90_temp/maxpri.irp.module.o  IRPF90_temp/priexp.irp.module.o 
IRPF90_temp/prim.irp.o: IRPF90_temp/prim.irp.module.o  IRPF90_temp/maxpri.irp.module.o  IRPF90_temp/lim.irp.module.o 
IRPF90_temp/lim.irp.o: IRPF90_temp/lim.irp.module.o  
IRPF90_temp/maxpri.irp.o: IRPF90_temp/maxpri.irp.module.o  IRPF90_temp/lim.irp.module.o 
IRPF90_temp/priexp.irp.o: IRPF90_temp/priexp.irp.module.o  IRPF90_temp/prim.irp.module.o  IRPF90_temp/maxpri.irp.module.o  IRPF90_temp/lim.irp.module.o 
IRPF90_temp/prog5.irp.o: IRPF90_temp/prog5.irp.module.o  IRPF90_temp/mult.irp.module.o 
IRPF90_temp/irp_touches.irp.o:  IRPF90_temp/mult.irp.o IRPF90_temp/mult.irp.o  IRPF90_temp/prim.irp.o IRPF90_temp/prim.irp.o  IRPF90_temp/lim.irp.o IRPF90_temp/lim.irp.o  IRPF90_temp/maxpri.irp.o IRPF90_temp/maxpri.irp.o  IRPF90_temp/priexp.irp.o IRPF90_temp/priexp.irp.o
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

