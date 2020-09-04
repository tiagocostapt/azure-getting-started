#********************************************
#* Create VM via PowerShell - Basic version *
#********************************************

#Connect to the Azure Account
Connect-AzAccount

#Create a new Resource Group
$rgName = "az-training-simple-psvm"
$location = "West Europe"
New-AzResourceGroup -Name $rgName -Location $location

#Create Credential Object - Username/password
$cred = Get-Credential

#Create Azure Virtual Machine using default values for size, networking, ...
New-AzVM -ResourceGroupName $rgName -Name myVM -Credential $cred -OpenPorts 3389