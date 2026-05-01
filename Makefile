.PHONY: all
all: dk7zb.stl drill-guide.stl

%.stl: %.scad
	openscad $< -o $@

.PHONY: clean
clean:
	rm -rf *.stl
