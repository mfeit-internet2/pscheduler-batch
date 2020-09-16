#
# Test Makefile
#

default: run

INPUT=input.sample
LOG=debug
OUTPUT=result

$(OUTPUT): $(INPUT) Makefile
	(BETA=1 pscheduler batch $(RUN_ARGS) --debug < $(INPUT) > $(OUTPUT)) \
	   3>&1 1>&2 2>&3 | tee $(LOG)
TO_CLEAN += $(OUTPUT) $(LOG)


run: $(OUTPUT)


dry:
	$(MAKE) RUN_ARGS=--dry run


clean:
	rm -rf $(TO_CLEAN) *~
