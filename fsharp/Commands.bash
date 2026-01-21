#project setup
ProjectName="<Name here>"

#create initial FSharp project structures
dotnet new install BenchmarkDotnet.Templates
dotnet new classlib -o $ProjectName
dotnet new benchmark -language F# -o "{$ProjectName}.Benchmark"
dotnet new xunit -language F# -o "{$ProjectName}.Tests"
