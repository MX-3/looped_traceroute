# Author: Bogdans Krutilins (bkr1haya@gmail.com)
# Date: 19/02/25
# Version: 1.0.1
# License: GPLv3

$ip_argument = $args[0]
$trace_count = 1

if (!$ip_argument)
{
	Write-Output "IP address missing. Please provide an IP address in the following format: '.\looped_traceroute.ps1 10.11.12.13'"
	exit
}

while ($true)
{		
	$hostname = hostname
	$file_path = ".\looped_traceroute_log.txt" 
	$date = Get-Date -Format "dd/MM/yyyy HH:mm"
	$tracert_output = tracert $ip_argument
	$seperator = "---------------------------------------"
	
	Write-Output "Trace count:`t$trace_count"
	Write-Output "Trace count:`t$trace_count" | Out-File -FilePath $file_path -append
	
	Write-Output "Time:`t`t$date " ("Hostname:`t$hostname  ")""
	Write-Output "Time:`t`t$date " ("Hostname:`t$hostname  ")"" | Out-File -FilePath $file_path -append
        	
	Write-Output $tracert_output
	Write-Output $tracert_output | Out-File -FilePath $file_path -append
		
	Write-Output "$seperator"
	Write-Output "$seperator" | Out-File -FilePath $file_path -append
	
	$trace_count = $trace_count + 1 
}
