# Note: You need to install Mono SDK first
# You need to download and extract mono-wasm sdk from this url:
# https://jenkins.mono-project.com/job/test-mono-mainline-wasm/label=ubuntu-1804-amd64/lastSuccessfulBuild/Azure/

$WASM_SDK="D:\WasmSDK\"

# Compile
csc /target:library -out:Example.dll /noconfig /nostdlib /r:$WASM_SDK/wasm-bcl/wasm/mscorlib.dll /r:$WASM_SDK/wasm-bcl/wasm/System.dll /r:$WASM_SDK/wasm-bcl/wasm/System.Core.dll /r:$WASM_SDK/wasm-bcl/wasm/Facades/netstandard.dll /r:$WASM_SDK/wasm-bcl/wasm/System.Net.Http.dll /r:$WASM_SDK/framework/WebAssembly.Bindings.dll /r:$WASM_SDK/framework/WebAssembly.Net.WebSockets.dll Example.cs

# Publish
mono $WASM_SDK/packager.exe --copy=always --out=./publish --asset=./index.html Example.dll

# Host and Browse
dotnet serve -d ./publish
