"###############################################################"
"Now running : " + $MyInvocation.MyCommand.Path
"###############################################################"



################################################################
"Storage Account configuration :"

$Global:SAName = "flaskstorageaccount"
#southcentralus centralus francecentral
$Global:SALocation = $RGLocation
$Global:SAKind = "BlockBlobStorage"
$Global:SASKU = "Standard_LRS"
$Global:SCName = "flask-images"
$Global:SCAuthMode = "login"
$Global:SCPublicAccess = "container"


################################################################
"Create the block blob storage account :"

az storage account create `
    --resource-group $RGName `
    --name $SAName `
    --location $SALocation `
    --sku $SASKU
    #--kind $SAKind `


################################################################
"Create the container :"

az storage container create `
 --account-name $SAName `
 --name $SCName `
 --auth-mode $SCAuthMode `
 --public-access $SCPublicAccess


#######################################################################
"Create the queue :"

az storage queue create `
    --name alexeistoragequeue `
    --account-name $SAName 
    # [--account-key]
    # [--auth-mode {key, login}]
    # [--connection-string]
    # [--fail-on-exist]
    # [--metadata]
    # [--queue-endpoint]
    # [--sas-token]
    # [--timeout]


