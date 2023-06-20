echo "`n`t`tDownloading Minitool Partitio Wizard ...."
Start-BitsTransfer -Source "https://raw.githubusercontent.com/padsalatushal/toolkit/main/assets/Minitool%20Partition%20Wizard%2012.7/Setup.exe" -Destination "minitool.exe"
echo "`n`t`t Minitool Downloaded, let's start the Installation process"
Write-Host "Staring Installtion.." 
Start-Process -FilePath .\minitool.exe
Write-Host "If Installtion is done press any key to contiue"
Pause

# terminate any minitool partition process
taskkill /IM partitionwizard.exe /F

Remove-Item .\minitool.exe


# Downloading external
Write-Host "Downloading external files"
$mfh_url = "https://raw.githubusercontent.com/padsalatushal/toolkit/main/assets/Minitool%20Partition%20Wizard%2012.7/Crack/x64/PartitionWizard.exe.mfh"
$folderPath = "C:\Program Files\MiniTool Partition Wizard 12"
$mfh_outputFilePath = Join-Path $folderPath "PartitionWizard.exe.mfh"
Remove-Item $mfh_outputFilePath
Invoke-WebRequest -Uri $mfh_url -OutFile $mfh_outputFilePath


$dll_url = "https://raw.githubusercontent.com/padsalatushal/toolkit/main/assets/Minitool%20Partition%20Wizard%2012.7/Crack/x64/partitionwizard.dll"
$dll_outputFilePath = Join-Path $folderPath "partitionwizard.dll"
Remove-Item $dll_outputFilePath
Invoke-WebRequest -Uri $dll_url -OutFile $dll_outputFilePath