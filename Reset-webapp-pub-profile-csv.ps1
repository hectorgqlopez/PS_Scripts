#Azure Subscription I want to use

$subscriptionId = "f7514983-ae98-4ee3-af9a-a6eba7a78361"

#Select the right Azure subscription

Set-AzContext -Subscription $subscriptionId
#This can be modified based on your requirement.

$ResourceToTagFilePath="H:\List_Of_All_Azure_Resources_06-20-22.csv"

$csv = import-csv $ResourceToTagFilePath

$resources = Get-AzWebApp
$csv| ForEach-Object {

Reset-AzWebAppPublishingProfile -WebApp $resources
}
