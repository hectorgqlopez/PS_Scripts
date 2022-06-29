#Azure Subscription I want to use
$subscriptionId = "XXXXXXXXXXXXXXXXXXXXXXX"
#Select the right Azure subscription
Set-AzContext -Subscription $subscriptionId
$tags = @{"Application"="IT"; "Department"="IT" ; "Environment"="Production"}
$resources = Get-AzWebApp
foreach ($Resource in $Resources){
Write-Host "Processing "$resource"" -ForegroundColor Black -BackgroundColor white
Update-AzTag -ResourceId $resource.id -Tag $tags -operation Merge
}
