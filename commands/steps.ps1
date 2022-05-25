################################################################
"resource Group :"

#southcentralus centralus francecentral westus2 eastus centralus 
$Global:RGLocation = "centralus"
$Global:RGName = "migration-rg"


#######################################################################
# Steps :

az group create --name $RGName --location $RGLocation

."commands\ServiceBus\SB_create.ps1"

."commands\StorageAccount\StorageAccount_create.ps1"

."commands\StorageAccount\StorageAccount_keys.ps1"









