# This will create a new user: Choncey
New-ADUser -Name "Choncey Nunn" -GivenName "Choncey" -Surname "Nunn" -SamAccountName "choncey" AccountPassword (ConvertTo-SecureString -AsPlainText "999999" -Force) -ChangePasswordAtLogin $True -Company "TekPerfek" -Title "idk" -State "California" -City "Oakland" -Description "just another rad dad" -EmployeeNumber "06"-Department "Executives" Displayname "Choncey Nunn" -Country "US" -PostalCode "01234" -Enabled $True

# This script will create new user: Maurice
New-ADUser -Name "Maurice Bey" -GivenName "Maurice" -Surname "Bey" -SamAccountName "maurice" AccountPassword (ConvertTo-SecureString -AsPlainText "999999" -Force) -ChangePasswordAtLogin $True -Company "TekPerfek" -Title "idk" -State "California" -City "Oakland" -Description "just another rad dad" -EmployeeNumber "06"-Department "Executives" Displayname "Maurice Bey" -Country "US" -PostalCode "01234" -Enabled $Tru

# This will create new groups (IT) (Finance), and add users to manage them
New-ADGroup -Name "IT" -Description "This is for IT" -GroupScope Global -ManagedBy "ChonceyNunn"

New-ADGroup -Name "Finance" -Description "This is for Finance" -GroupScope Global -ManagedBy "MauriceBey"
