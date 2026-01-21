#project setup

ProjectName="MyAlgo"

#create a solution file if this is not part of an existing repo
git init
dotnet new gitignore
git add .gitignore
git commit -m "Add .gitignore file"
dotnet new sln --name $ProjectName

#create initial FSharp project structures
dotnet new install BenchmarkDotnet.Templates
dotnet new classlib --language F# -o $ProjectName
dotnet new benchmark --language F# -o "$ProjectName.Benchmark"
dotnet new xunit --language F# -o "$ProjectName.Tests"

dotnet sln add $ProjectName
dotnet sln add "$ProjectName.Benchmark"
dotnet sln add "$ProjectName.Tests"


#more useful commands:

#add all fsharp projects to the solution
dotnet sln add $(ls **/*.fsproj)
