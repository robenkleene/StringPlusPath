SCHEME = StringPlusPath

.PHONY: build lint

ci: lint test

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
