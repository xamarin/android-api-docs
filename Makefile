TOP := $(shell pwd)

all: assemble

validate:
	@echo Validating....
	for index in $(wildcard docs/*/en/index.xml) ; do \
		mdoc validate $$index ; \
		mdoc validate `dirname $$index`; \
	done; \
	@echo success

assemble: MonoAndroid-lib.zip

MonoAndroid-lib.tree: docs/MonoAndroid-lib.zip
MonoAndroid-lib.zip:
	mdoc --debug assemble -o MonoAndroid-lib $(wildcard docs/*/en)

install: MonoAndroid-lib.tree MonoAndroid-lib.zip
	cp $^ /Library/Frameworks/Mono.framework/External/monodoc/

