all: clean build test

clean:
	msbuild /t:clean /p:Configuration=Release


build:
	msbuild /t:build /p:Configuration=Release

test:
	nunit3-console ParallelSelenium.sln --workers=18 /config:Release