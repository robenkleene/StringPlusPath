SCHEME = StringPlusPath

.PHONY: build test lint

ci: lint build

lint:
	swiftlint

autocorrect:
	swiftlint autocorrect

build:
	xcodebuild build

test:
	xcodebuild test \
		-alltargets \
		-configuration Debug \
		-scheme $(SCHEME)
