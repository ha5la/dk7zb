.PHONY: all
all:

GITHUB_SHA ?= $(shell git rev-parse HEAD)
REVISION = $(shell echo $(GITHUB_SHA) | cut -c1-7)
D ?= 12

all: output/dk7zb-$D.stl output/drill-guide-$D.stl

%.json: %.json.in
	REVISION=$(REVISION) ELEMENT_DIAMETER=$D envsubst < $^ > $@

output/%-$D.stl: %.scad customizer.json
	mkdir -p $(@D)
	openscad $< -p customizer.json -P ci -o $@

.PHONY: clean
clean:
	rm -rf output/
	rm -f customizer.json
