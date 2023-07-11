# run using run-build.ps1

$processOptions = @{
    FilePath = "cmake"
    ArgumentList = "--build `"./build`""
}

$runApp = @{
    FilePath = "./build/DownloadSorter.exe"
}

$process = Start-Process @processOptions -Wait -NoNewWindow -PassThru # -and (Start-Process @runApp -Wait -NoNewWindow)

if ($process.ExitCode -eq 0) {
    "running the app ..."
    Clear-Host
    Start-Process @runApp -Wait -NoNewWindow
}

Start-Sleep 30000
