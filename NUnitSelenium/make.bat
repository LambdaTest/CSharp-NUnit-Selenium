msbuild /t:clean /p:Configuration=Release
msbuild /t:clean /p:Configuration=Debug
msbuild /t:build /p:Configuration=Release
nunit3-console ParallelSelenium.sln --workers=9 /config:Release