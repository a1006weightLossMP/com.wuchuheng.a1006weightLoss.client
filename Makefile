
build: clean build_ios
	@echo Build App.

build_ios:
	flutter build ios --release --no-codesign

clean:
	rm -rf build
