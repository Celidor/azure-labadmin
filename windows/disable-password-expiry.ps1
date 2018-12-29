#disable password expiry on Azure AD account
#prerequisites:
#Install the 64-bit version of the Microsoft Online Services Sign-in Assistant at https://www.microsoft.com/en-us/download/details.aspx?id=41950
#Install-Module MSOnline
#set-executionpolicy unrestricted
Import-Module MSOnline
Connect-MsolService
for ($i=1;$i -le 20; $i++) {
    "csa$i@celidor.net"
    Set-MsolUser -UserPrincipalName csa$i@celidor.net -PasswordNeverExpires $true
    Get-MSOLUser -UserPrincipalName csa$i@celidor.net | Select PasswordNeverExpires
}