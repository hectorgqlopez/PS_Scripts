#Azure Subscription I want to use
$subscriptionId = "XXXXXXXXXXXXXXXXXXXXXXX"
#Select the right Azure subscription
Set-AzContext -Subscription $subscriptionId
$tags = @{"Application"="IT"; "Department"="IT" ; "Environment"="Production"}
$resources = Get-AzVM
foreach ($Resource in $Resources){
Write-Host "Processing "$resource"" -ForegroundColor Black -BackgroundColor white
New-AzTag -ResourceId $resource.id -Tag $tags 
}
