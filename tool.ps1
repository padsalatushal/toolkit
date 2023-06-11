Add-Type -AssemblyName PresentationFramework
[xml]$xaml = @"
<Window
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Name="Window">
    <Grid x:Name="Grid">
        <Grid.RowDefinitions>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
        </Grid.RowDefinitions>
        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="Auto"/>
            <ColumnDefinition Width="Auto"/>
        </Grid.ColumnDefinitions>
        <Button x:Name = "WPFwinutil"
            Content="winutil"
            Grid.Column="1"
            Grid.Row="0"
        />
    </Grid>
</Window>
"@
$reader = (New-Object System.Xml.XmlNodeReader $xaml)
$window = [Windows.Markup.XamlReader]::Load($reader)

$WPFwinutil = $window.FindName("WPFwinutil")
$WPFwinutil.Add_Click({
    irm christitus.com/win | iex
})

$window.ShowDialog()