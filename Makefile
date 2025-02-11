.PHONY: all mruby htslib bcftools clean update_submodules

JOBS ?= 4

all: update_submodules bcftools

update_submodules:
	@echo "Updating git submodules..."
	git submodule update --init --recursive

mruby:
	@echo "Building mruby..."
	CONFIG=./mruby_build_config.rb rake -f mruby/Rakefile

htslib:
	@echo "Building htslib..."
	cd htslib && autoreconf -i && ./configure && make -j $(JOBS)

bcftools: mruby htslib
	@echo "Building bcftools..."
	cd bcftools && autoreconf -i && ./configure && make -j $(JOBS)

clean:
	@echo "Cleaning up..."
	cd htslib && make clean
	cd bcftools && make clean
