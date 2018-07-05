$computers = Get-ADComputer -Filter {name -like "*"}
$source = "path to ini or conf"
$dest = "new location"
foreach ($computer in $computers) {
    if (test-Connection -Cn $computer -quiet) {
        Copy-Item $source -Destination \\$computer\$dest -Force
Get-Service -Name ServiceNameHere  -ComputerName $computers | Restart-service
    } else {
        "$computer is not online"
           }
	                              }