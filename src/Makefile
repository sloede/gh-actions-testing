FC := gfortran

all: hello bad

hello: hello.f90
	$(FC) -o $@ $?

bad: bad.f90
	$(FC) -o $@ $?

clean:
	rm -f hello
	rm -f bad

.PHONY: all clean
