connect-azaccount 
$tags = @{"app"="linux"} 
$resource = Get-AzResource -Name testwpad -ResourceGroup appsvc_linux_centralus  
New-AzTag -ResourceId $resource.id -Tag $tags 