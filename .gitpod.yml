image: unoplatform/wasm-build:2.1.1

vscode:
  extensions:
    - ms-vscode.csharp@1.21.12:kw8SkO8+aVTSFug281WfQQ==

ports:
  # Default port for the SampleApp
  - port: 8000
    onOpen: open-preview

  # Port for the Remote Control server
  - port: 53487

tasks:
  # This task is run during pre-build and it's log and built results are
  # restored as part of the workspace initialization.
  - prebuild: build/gitpod/build-wasm.sh
    command: export NUGET_PACKAGES=/workspace/.nuget

  - name: Build
    before: export NUGET_PACKAGES=/workspace/.nuget
    command: echo -e "Follow the guide here https://github.com/unoplatform/uno/tree/master/doc/articles/features/working-with-gitpod.md" && echo && echo "Build Uno with build/gitpod/build-wasm.sh"
    openMode: tab-after
