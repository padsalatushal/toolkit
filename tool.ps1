Add-Type -AssemblyName PresentationFramework
[xml]$xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        x:Name="Window"
        Title="Window"
        Width="400"
        Height="300">

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
                Margin="5"
        />
        
        <Button x:Name="WPFRemoveEdgeSoft"
                Content="Remove Microsoft Edge(Temparary)"
                Grid.Column="1"
                Grid.Row="0"
                Width="200"
                Height="50"
                Margin="5"
        />

        <Button x:Name="WPFRemoveEdgeHard"
                Content="Remove Microsoft Edge(permenate)"
                Grid.Column="2"
                Grid.Row="0"
                Width="200"
                Height="50"
                Margin="5"
        />

        <Button x:Name="Button4"
                Content="Activate Windows + Office"
                Grid.Column="0"
                Grid.Row="1"
                Width="100"
                Height="50"
                Margin="5"
        />
            
        <Button x:Name="ActivateOffice"
                Content="Button 5"
                Grid.Column="1"
                Grid.Row="1"
                Width="100"
                Height="50"
                Margin="5"
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