# 1. Get a list of all Web Apps in the subscription
  
$WebApp = Get-AzWebApp | Sort-Object Name
 
#Get-AzWebAppSlot to get a list of the App Service available slots


foreach ($WebApp in $WebApps){

$WebAppSlots = Get-AzWebAppSlot -Name $WebApp.Name -ResourceGroupName $WebApp.ResourceGroup

Reset-AzWebAppSlotPublishingProfile -ResourceGroupName $WebApp.ResourceGroup -Name $WebApp.Name

}
