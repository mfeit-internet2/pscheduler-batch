#
# Test Makefile
#

default: test

INPUT=input.sample
LOG=run.log
RESULT=result

DEST=tb-el7-prod.ps.dev.internet2.edu

REAL_INPUT=$(INPUT).real
$(REAL_INPUT): $(INPUT)
	sed -e 's/__DEST__/$(DEST)/g' < $< >$@
TO_CLEAN += $(REAL_INPUT)

# TODO: This should tee stderr to $(LOG)
$(RESULT): $(REAL_INPUT) batch
	python2 -c 'import pscheduler' 2>/dev/null \
	&& python2 ./batch $(RUN_ARGS) --debug < $(REAL_INPUT) > $(RESULT) \
	|| python3 ./batch $(RUN_ARGS) --debug < $(REAL_INPUT) > $(RESULT)
TO_CLEAN += $(RESULT) $(LOG)

dry:
	$(MAKE) RUN_ARGS=--dry default

test: $(RESULT)

clean:
	rm -rf $(TO_CLEAN) *~
