#Azure Subscription I want to use

$subscriptionId = "XXXXXXXXXXXXXXXXXXXXXXX"

#Select the right Azure subscription

Set-AzContext -Subscription $subscriptionId


$resources = Get-AzWebApp
foreach ($Resource in $Resources){

Reset-AzWebAppPublishingProfile -WebApp $resources
}