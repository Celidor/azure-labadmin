# azure-labadmin
Scripts for administering Azure security labs

# prerequisites for Linux
Minimum prerequisites:
* Git
* Azure CLI 2.0
* Azure credentials

# set up local repository using Linux
Clone the remote repository and copy files:
```
$ git clone git@github.com:celidor/azure-labadmin.git
$ cd azure-labadmin/linux
$ cp login.sh.example login.sh
```
Edit the newly created login.sh to include the credentials of an Azure AD account with admin rights to your subscription.

# Manage Azure resource groups using Linux
Edit create-resource-groups.sh and delete-resource-groups.sh as appropriate.

To create and assign resource groups:
```
$ ./create-resource-groups.sh
```
To delete resource groups:
```
$ ./delete-resource-groups.sh
```

# Disable Azure AD password expiry using Windows
Pre-requisites:
* Install the 64-bit version of the Microsoft Online Services Sign-in Assistant at https://www.microsoft.com/en-us/download/details.aspx?id=41950
* Run PowerShell as an Administrator
```
Install-Module MSOnline
set-executionpolicy unrestricted
```
To disable password expiry for users:
```
cd windows
```
Edit the disable-password-expiry script as appropriate for your setup
```
.\disable-password-expiry.ps1
```
Enter credentials for an Azure AD administrator account when prompted
