[CmdletBinding(PositionalBinding = $True)]
param(
    [string] $DemoName = "demo1"
    )

#Login-AzureRmAccount

$ErrorActionPreference = "Stop"

try
{
    Push-Location $PSScriptRoot

    $DeploySharedResourceGroup = "..\..\src\Demo.ResourceGroup.Shared\Deploy-AzureResourceGroup.ps1"
    $DeployResourceGroup = "..\..\src\Demo.ResourceGroup\Deploy-AzureResourceGroup.east-west.ps1"
    $DeployResourceGroupTrafficManager = "..\..\src\Demo.ResourceGroup.TrafficManager\Deploy-AzureResourceGroup.ps1"

    & $DeploySharedResourceGroup -DemoName $DemoName
    & $DeployResourceGroup -DemoName $DemoName
    & $DeployResourceGroupTrafficManager -DemoName $DemoName
    
    Pop-Location
}
catch 
{
    Write-Host $_.Exception.Message
	"Failed creating resources"
    exit (1)
}