#r "System.Xml.Linq.dll"
#r "System.Xml.dll"
#r "System.Core.dll"

open System
open System.Xml.Linq
open System.Linq
open System.Text.RegularExpressions
open System.Xml
open System.IO
open System.Net
open System.Diagnostics

//Usage SummarizeEventArgs WarningEventArgs
//let cName = fsi.CommandLineArgs.[1]

let xn s = XName.Get(s)

let baseDir = "/Users/larryobrien/Documents/src/xamarin/android-api-docs/docs/"

let allFileNames : string seq = seq { for f in Directory.EnumerateFiles(baseDir , "*.xml", SearchOption.AllDirectories) do yield f }

let MembersCalling (doc:XDocument) (argsName:string) = 
    doc.Descendants(xn "ReturnType") 
    |> Seq.filter (fun el -> el.Value.IndexOf("System.EventHandler") > -1)
    |> Seq.filter (fun el -> el.Value.IndexOf(argsName) > -1)
    |> Seq.map (fun el -> el.Parent.Parent)
    

let allXDocs = seq { for s in allFileNames do yield (XDocument.Load(s)) }

allXDocs
|> 