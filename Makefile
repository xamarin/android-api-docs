TOP := $(shell pwd)

all: assemble

validate:
	@echo Validating....
	for index in $(wildcard docs/*/en/index.xml) ; do \
		mdoc validate $$index ; \
		mdoc validate `dirname $$index`; \
	done; \
	@echo success

assemble:
	echo mdoc assemble -o MonoAndroid-lib $(wildcard docs/*/en)

install: MonoAndroid-lib.tree MonoAndroid-lib.zip
	cp $^ /Library/Frameworks/Mono.framework/External/monodoc/

