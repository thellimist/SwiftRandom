install:
ifeq ($(brew list | grep -i carthage), "")
	brew install carthage
else
	carthage version
endif
	carthage bootstrap --platform ios
