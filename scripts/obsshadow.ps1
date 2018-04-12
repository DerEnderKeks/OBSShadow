$obs = "C:\Program Files (x86)\obs-studio\bin\64bit\obs64.exe"
$params = "--collection Shadow --profile Shadow --scene ShadowDefault --minimize-to-tray --startreplaybuffer"
[Environment]::CurrentDirectory = (Split-Path -Path $obs)
[System.Diagnostics.Process]::Start($obs, $params)
