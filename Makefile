#
# Test Makefile
#

default: test

INPUT=input.sample
LOG=run.log
RESULT=result

# TODO: This should tee stderr to $(LOG)
$(LOG): $(INPUT) batch
	./batch $(RUN_ARGS) --debug < $(INPUT) < $(INPUT) > $(RESULT)
TO_CLEAN += $(RESULT) $(LOG)

dry:
	$(MAKE) RUN_ARGS=--dry default

test: $(LOG)

clean:
	rm -rf $(TO_CLEAN) *~
