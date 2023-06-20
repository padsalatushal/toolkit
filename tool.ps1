# # Check for admin 
# if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
#         Write-Output "Needs to be ran as Administrator. Attempting to relaunch."
#         Start-Process -Verb runas -FilePath powershell.exe -ArgumentList "-ExecutionPolicy Bypass -Command `"iwr -useb https://raw.githubusercontent.com/padsalatushal/toolkit/main/tool.ps1 | iex`""
    
#         break
#     }
# # check for execution policy 
# $executionPolicy = Get-ExecutionPolicy
# if ($executionPolicy -ne "Bypass") {
#     Start-Process -Verb runas -FilePath powershell.exe -ArgumentList "-ExecutionPolicy Bypass -Command `"iwr -useb https://raw.githubusercontent.com/padsalatushal/toolkit/main/tool.ps1 | iex`""
#     break     
# }

Add-Type -AssemblyName PresentationFramework
[xml]$xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        x:Name="Window"
        Title="Window"
        Width="450"
        Height="350">

    <Grid x:Name="Grid" Margin="20">
        <Grid.RowDefinitions>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
        </Grid.RowDefinitions>
        
        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="Auto"/>
            <ColumnDefinition Width="Auto"/>
            <ColumnDefinition Width="Auto"/>
        </Grid.ColumnDefinitions>
        
        <Button x:Name="WPFwinutil"
                Content="Launch winutil"
                Grid.Column="0"
                Grid.Row="0"
                Width="100"
                Height="50"
                Margin="15"
        />
        
        <Button x:Name="WPFburpproinstaller"
                Content="Install Burp Suite Pro"
                Grid.Column="1"
                Grid.Row="0"
                Width="200"
                Height="50"
                Margin="15"
        />

        <Button x:Name="WPFRemoveEdgeHard"
                Content="Remove Microsoft Edge(permenate)"
                Grid.Column="1"
                Grid.Row="1"
                Width="200"
                Height="50"
                Margin="15"
        />

        <Button x:Name="WPFwindowsactivatortoolkit"
                Content="Windows Activate Toolkit "
                Grid.Column="0"
                Grid.Row="1"
                Width="100"
                Height="50"
                Margin="15"
        />
            
        <Button x:Name="WPFActivateOffice"
                Content="Office Activate"
                Grid.Column="0"
                Grid.Row="2"
                Width="100"
                Height="50"
                Margin="15"
        />
        
        <Button x:Name="WPFinstallminitool"
                Content="Minitool Partition Wizard Creck"
                Grid.Column="1"
                Grid.Row="2"
                Width="200"
                Height="50"
                Margin="15"
        />
        
    </Grid>
</Window>

"@

$reader = (New-Object System.Xml.XmlNodeReader $xaml)
$window = [Windows.Markup.XamlReader]::Load($reader)


$WPFwinutil = $window.FindName("WPFwinutil")
$WPFwinutil.Add_Click({
        Start-Process -Verb runas -FilePath powershell.exe -ArgumentList "-ExecutionPolicy Bypass -Command `"iwr -useb https://christitus.com/win | iex`""
})

$WPFRemoveEdgeHard = $window.FindName("WPFRemoveEdgeHard")
$WPFRemoveEdgeHard.Add_Click({
        Start-Process -Verb runas -FilePath powershell.exe -ArgumentList "-ExecutionPolicy Bypass -Command `"iwr -useb https://padsalatushal.github.io/edge.bat | iex`""

})

$WPFburpproinstaller = $window.FindName("WPFburpproinstaller")
$WPFburpproinstaller.Add_Click({
        Start-Process -Verb runas -FilePath powershell.exe -ArgumentList "-ExecutionPolicy Bypass -Command `"iwr -useb https://padsalatushal.github.io/burp_setup.ps1 | iex`""

})


$WPFwindowsactivatortoolkit = $window.FindName("WPFwindowsactivatortoolkit")
$WPFwindowsactivatortoolkit.Add_Click({
        Start-Process -Verb runas -FilePath powershell.exe -ArgumentList "-ExecutionPolicy Bypass -Command `"iwr -useb https://massgrave.dev/get | iex`""

})

$WPFActivateOffice = $window.FindName("WPFActivateOffice")
$WPFActivateOffice.Add_Click({
        Start-Process -Verb runas -FilePath powershell.exe -ArgumentList "-ExecutionPolicy Bypass -Command `"iwr -useb https://raw.githubusercontent.com/padsalatushal/Windows-Office-Activator/main/office-activate.bat | iex`""

})

$WPFinstallminitool = $window.FindName("WPFinstallminitool")
$WPFinstallminitool.Add_Click({
        Start-Process -Verb runas -FilePath powershell.exe -ArgumentList "-ExecutionPolicy Bypass -Command `"iwr -useb https://raw.githubusercontent.com/padsalatushal/toolkit/main/assets/Minitool%20Partition%20Wizard%2012.7/minitool_install.ps1 | iex`""

})




$window.ShowDialog()