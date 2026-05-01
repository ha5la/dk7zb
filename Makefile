.PHONY: all
all: dk7zb.stl drill-guide.stl

REVISION = $(shell git describe --always)

%.stl: %.scad
	openscad $< -Drevision=\"$(REVISION)\" -o $@

.PHONY: clean
clean:
	rm -rf *.stl
