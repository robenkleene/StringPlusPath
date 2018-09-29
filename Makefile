SCHEME = StringPlusPath

.PHONY: build test lint autocorrect swiftformat swiftlint_autocorrect bootstrap

ci: build
ac: autocorrect
autocorrect: swiftformat swiftlint_autocorrect

lint:
	swiftlint --strict

swiftformat:
	swiftformat --commas inline --exclude Carthage .

swiftlint_autocorrect:
	swiftlint autocorrect

build:
	xcodebuild build

bootstrap:
	carthage bootstrap

test:
	xcodebuild test \
		-alltargets \
		-configuration Debug \
		-scheme $(SCHEME)

