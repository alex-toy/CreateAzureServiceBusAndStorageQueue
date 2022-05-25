$AuthorizationRule = "alexeiauthorizationrule"

az servicebus namespace authorization-rule create `
    --resource-group $RGName `
    --namespace-name $SBNamespaceName `
    --name $AuthorizationRule `
    --rights Manage Listen Send

$Global:ConnectionString = az servicebus namespace authorization-rule keys list `
    --resource-group $RGName `
    --namespace-name $SBNamespaceName `
    --name $AuthorizationRule `
    --query primaryConnectionString 