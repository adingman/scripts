$Cluster1 = Read-Host -Prompt 'Input the name of the Cluster'
$FileLocation = "C:\temp\VM_CLuster_Host_Datastore_GHQ.csv"

Get-VM -Location $Cluster1 | Select Name, @{N="Cluster";E={Get-Cluster -VM $_}}, `
@{N="ESX Host";E={Get-VMHost -VM $_}}, `
@{N="Datastore";E={Get-Datastore -VM $_}} | Sort Name | Export-Csv -NoTypeInformation $FileLocation