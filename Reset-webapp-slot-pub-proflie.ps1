#Azure Subscription I want to use

$subscriptionId = "XXXXXXXXXXXXXXXXXXXXXXX"

#Select the right Azure subscription

Set-AzContext -Subscription $subscriptionId

# Reset slot publish profile for specific slot 

Reset-AzWebAppSlotPublishingProfile -Name Webappname -ResourceGroupName rgname -Slot test
