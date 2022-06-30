$tags = @{"Application"="IT"; "Department"="IT" ; "Environment"="Production"}
$resource = Get-AzResource -Name testwpad -ResourceGroup appsvc_linux_centralus
Update-AzTag -ResourceId $resource.id -Tag $tags -operation Merge
