# azure-labadmin
Scripts for administering Azure security labs

# prerequisites
Minimum prerequisites:
* Git
* Azure CLI 2.0
* Azure credentials
* Python 3.6

# set up local repository
Clone the remote repository and copy files:
```
$ git clone git@github.com:celidor/azure-labadmin.git
$ cd azure-labadmin
```
Edit the newly created login.sh to include the credentials of an Azure AD account with admin rights to your subscription.

Edit create-resource-groups.sh and delete-resource-groups.sh as appropriate.

To create and assign resource groups:
```
$ ./create-resource-groups.sh
```
To delete resource groups:
```
$ ./delete-resource-groups.sh
```
