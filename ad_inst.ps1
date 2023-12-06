# This will prep for installing AD
get-windowsfeature

# This will install Active Directory
install-windowsfeature AD-Domain-Services

# This will install Domain Server for AD
Install-ADDSForest -CreateDnsDelegation:$false -DatabasePath "C:\Windows\NTDS" -DomainMode "Win2012R2" -DomainName "choncey.net" -DomainNetbiosName "CHONCEY" -ForestMode "Win2012R2" -InstallDns:$true -LogPath "C:\Windows\NTDS" -NoRebootOnCompletion:$false -SysvolPath "C:\Windows\SYSVOL" -Force:$true
