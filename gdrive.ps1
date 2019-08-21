gdr |
foreach {
	if ($_.free -lt 1) {
		write-host $_.name 'has' ($_.free/1024/1024/1024) 'gb remaining' -foregroundcolor magenta
		}
	else {
		write-host $_.name 'has' ($_.free/1024/1024/1024) 'gb remaining' -foregroundcolor green
		}
	}
	[console]::beep(3000,500)
	[console]::beep(1000,400)
