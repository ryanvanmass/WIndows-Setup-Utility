<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    SysAdminTools
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$SysAdminTools                   = New-Object system.Windows.Forms.Form
$SysAdminTools.ClientSize        = New-Object System.Drawing.Point(499,665)
$SysAdminTools.text              = "SysAdminTools"
$SysAdminTools.TopMost           = $false

$SystemStaging                   = New-Object system.Windows.Forms.Label
$SystemStaging.text              = "System Staging"
$SystemStaging.AutoSize          = $true
$SystemStaging.width             = 25
$SystemStaging.height            = 10
$SystemStaging.location          = New-Object System.Drawing.Point(11,14)
$SystemStaging.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',20)

$InstallBasicUtils               = New-Object system.Windows.Forms.Button
$InstallBasicUtils.text          = "Install Basic Utils"
$InstallBasicUtils.width         = 99
$InstallBasicUtils.height        = 46
$InstallBasicUtils.Anchor        = 'top,right,bottom,left'
$InstallBasicUtils.location      = New-Object System.Drawing.Point(45,52)
$InstallBasicUtils.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',8)

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "System Services"
$Label2.AutoSize                 = $true
$Label2.width                    = 25
$Label2.height                   = 10
$Label2.location                 = New-Object System.Drawing.Point(276,14)
$Label2.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',20)

$WSLSetup                        = New-Object system.Windows.Forms.Button
$WSLSetup.text                   = "WSL Setup"
$WSLSetup.width                  = 99
$WSLSetup.height                 = 46
$WSLSetup.Anchor                 = 'top,right,bottom,left'
$WSLSetup.location               = New-Object System.Drawing.Point(44,106)
$WSLSetup.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',8)

$NetworkDrive                    = New-Object system.Windows.Forms.Button
$NetworkDrive.text               = "Add Network Drives"
$NetworkDrive.width              = 99
$NetworkDrive.height             = 46
$NetworkDrive.Anchor             = 'top,right,bottom,left'
$NetworkDrive.location           = New-Object System.Drawing.Point(44,160)
$NetworkDrive.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',7)

$SetDNS                          = New-Object system.Windows.Forms.Button
$SetDNS.text                     = "Set DNS"
$SetDNS.width                    = 99
$SetDNS.height                   = 46
$SetDNS.Anchor                   = 'top,right,bottom,left'
$SetDNS.location                 = New-Object System.Drawing.Point(44,213)
$SetDNS.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$EnableSSH                       = New-Object system.Windows.Forms.Button
$EnableSSH.text                  = "Enable SSH"
$EnableSSH.width                 = 99
$EnableSSH.height                = 46
$EnableSSH.Anchor                = 'top,right,bottom,left'
$EnableSSH.location              = New-Object System.Drawing.Point(314,52)
$EnableSSH.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',8)

$EnableRDP                       = New-Object system.Windows.Forms.Button
$EnableRDP.text                  = "Enable RDP"
$EnableRDP.width                 = 99
$EnableRDP.height                = 46
$EnableRDP.Anchor                = 'top,right,bottom,left'
$EnableRDP.location              = New-Object System.Drawing.Point(314,106)
$EnableRDP.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',8)

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "System Information"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(251,165)
$Label1.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',20)

$WindowsVer                      = New-Object system.Windows.Forms.Button
$WindowsVer.text                 = "Windows Version"
$WindowsVer.width                = 99
$WindowsVer.height               = 46
$WindowsVer.Anchor               = 'top,right,bottom,left'
$WindowsVer.location             = New-Object System.Drawing.Point(314,195)
$WindowsVer.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',8)

$IPAddress                       = New-Object system.Windows.Forms.Button
$IPAddress.text                  = "IP Address"
$IPAddress.width                 = 99
$IPAddress.height                = 46
$IPAddress.Anchor                = 'top,right,bottom,left'
$IPAddress.location              = New-Object System.Drawing.Point(314,248)
$IPAddress.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',8)

$Conesole                        = New-Object system.Windows.Forms.TextBox
$Conesole.multiline              = $true
$Conesole.width                  = 473
$Conesole.height                 = 190
$Conesole.location               = New-Object System.Drawing.Point(11,455)
$Conesole.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$SysAdminTools.controls.AddRange(@($SystemStaging,$InstallBasicUtils,$Label2,$WSLSetup,$NetworkDrive,$SetDNS,$EnableSSH,$EnableRDP,$Label1,$WindowsVer,$IPAddress,$Conesole))




#Write your logic code here
### New System Staging ###
$InstallBasicUtils.Add_Click({
    $Conesole.text= "Installing Virt Viewer"
    winget install virt.viewer | Write-Host
    winget install virt.viewer
    
    $Conesole.text= "Installing Google Chrome"
    winget install Google.Chrome
    
    $Conesole.text= "Installing Etcher"
    winget install Balena.Etcher
    
    $Conesole.text= "Installing VS Code"
    winget install Microsoft.VSCode
    
    $Conesole.text= "Installing OnlyOffice"
    winget install ONLYOFFICE.DesktopEditors
    
    $Conesole.text= "Installing PowerToys"
    winget install Microsoft.PowerToys
    
    $Conesole.text= "Installing Tailscale"
    winget Install tailscale.tailscale

    $Conesole.text="Install RDP Client"
    winget install -id Microsoft.RemoteDesktopClient

    $Conesole.text= "All Programs Installed"
})

$WSLSetup.Add_Click({
    $Conesole.text= "Installing and Configuring WSL"
    $Conesole.text= wsl --install | Write-Host
    $Conesole.text=   "WSL Installed"

})

$NetworkDrive.Add_Click({
    Write-Host "Enter Password:"
    $Passwd = Read-Host
    Net use O: \\Slave1.local\Olmypus $Passwd /User:ryan /persistent:yes
    Net Use H: \\Slave1.local\Hades  $Passwd /User:ryan /persistent:yes
})


### System Services ###
$EnableSSH.Add_Click({
    Add-WindowsCapability -Online -Name OpenSSH.Client
    Add-WindowsCapability -Online -Name OpenSSH.Server
    Set-Service -Name sshd -StartupType 'Automatic' 
})

$SetDNS.Add_Click({Set-DnsClientServerAddress -INterfaceAlias 'Ethernet' -ServerAddresses ("192.168.2.95", "8.8.8.8")})

$EnableRDP.Add_Click({
    Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name "fDenyTSConnections" -value 0
    Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
})



### System Information
$WindowsVer.Add_Click({winver})
$IPAddress.Add_Click({$Conesole.text= ipconfig | Select-String -Pattern "Ethernet","IPv4 Address"})




[void]$SysAdminTools.ShowDialog()