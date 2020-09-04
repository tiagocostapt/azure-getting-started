#*******************************************
#* Deploy an ARM Template using PowerShell *
#*******************************************

#Connect to the Azure Account
Connect-AzAccount

#List all Resource Groups of selected Subscription
Get-AzResourceGroup

#Create a new Resource Group
$RGName = "az-training-armtemplate"
$Region = "West Europe"
New-AzResourceGroup -Name $RGName -Location $Region

#Deploy ARM Template via PowerShell
$ArmTemplatePath = "C:\_Data\az-training-demos\arm-templates\1stARMTemplate\azuredeploy.json"
New-AzResourceGroupDeployment -ResourceGroupName $RGName -TemplateFile $ArmTemplatePath -TemplateParameterFile "C:\_Data\az-training-demos\arm-templates\1stARMTemplate\azuredeploy.parameters.json"