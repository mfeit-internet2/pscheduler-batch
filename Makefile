#
# Test Makefile
#

default: run

INPUT=input.sample
LOG=debug
OUTPUT=result


# TODO: This should tee stderr to $(LOG)
$(OUTPUT): $(INPUT) batch Makefile
	python2 -c 'import pscheduler' 2>/dev/null \
	&& PYTHON=python2 || PYTHON=python3 \
	&& ($$PYTHON ./batch $(RUN_ARGS) --debug < $(INPUT) > $(OUTPUT)) \
	   3>&1 1>&2 2>&3 | tee $(LOG)
TO_CLEAN += $(OUTPUT) $(LOG)


run: $(OUTPUT)


dry:
	$(MAKE) RUN_ARGS=--dry run


clean:
	rm -rf $(TO_CLEAN) *~
