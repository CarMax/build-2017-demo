#Login-AzureRmAccount

Push-Location $PSScriptRoot

.\Deploy-AzureResourceGroup -ResourceGroupLocation "West US" -ResourceGroupName "kmx-$DemoName-west" -TemplateFile "Templates\azuredeploy.json" -TemplateParametersFile "Templates\$DemoName-west.parameters.json"
.\Deploy-AzureResourceGroup -ResourceGroupLocation "East US" -ResourceGroupName "kmx-$DemoName-east" -TemplateFile "Templates\azuredeploy.json" -TemplateParametersFile "Templates\$DemoName-east.parameters.json"

Pop-Location