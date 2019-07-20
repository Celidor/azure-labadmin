#!/bin/bash
#set user passwords from file user-passwords.sh using format below
#ensure passwords comply with Azure AD password policy
#DOMAIN="example.com"
#PASSWORD_1="xxxxxxxxxxxxxxxxxxxxxxxxxxx"
#PASSWORD_2="xxxxxxxxxxxxxxxxxxxxxxxxxxx"
source user-passwords.sh
echo "Creating Azure AD users for $DOMAIN"
for i in `seq 1 20`;
do
  echo "creating user csa$i"
  
  PASSWORD="PASSWORD_$i"  
  PASSWORD=${!PASSWORD}
  az ad user create --user-principal-name csa$i@$DOMAIN --display-name csa$i --password $PASSWORD
done
