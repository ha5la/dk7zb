.PHONY: all
all: output/dk7zb.stl output/drill-guide.stl

GITHUB_SHA ?= $(shell git rev-parse HEAD)
REVISION = $(shell echo $(GITHUB_SHA) | cut -c1-7)

%.json: %.json.in
	REVISION=$(REVISION) envsubst < $^ > $@

output/%.stl: %.scad customizer.json
	mkdir -p $(@D)
	openscad $< -p customizer.json -P ci -o $@

.PHONY: clean
clean:
	rm -rf output/
	rm -f customizer.json
