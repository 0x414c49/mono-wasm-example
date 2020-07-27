# Mono Wasm
This repo contains slides and materials for Web assembly and Blazor


## Tools

This repo is highly dependant on Mono SDK. Please install it first.

1. [Mono SDK](https://www.mono-project.com/download/stable/)
3. [Mono Wasm Compiler](https://jenkins.mono-project.com/jobtest-mono-mainline-wasm/label=ubuntu-1804-amd64/lastSuccessfulBuild/Azure/)


## Run and compile the CSharp example

1. First make sure you have installed `Mono` and extracted `mono-wasm`.
2. Make sure Mono binaries can be accessed in the terminal/command-line. (Set the bin of the mono to env path)
3. In the `compile.ps1` change address of `$WASM_SDK` to the downloaded/extracted one.
4. Make sure you have dotnet-serve installed https://www.nuget.org/packages/dotnet-serve/.
5. Run `compile.ps1` to compile, publish and browse your code.
6. Go to `http://localhost:8080/index.html` to try it!
