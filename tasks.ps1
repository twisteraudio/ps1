#This is a portfolio ps1 of all tasks that can be run
#Copypasta all the scripts then create a menu to select each task
do {
    write-host '[1] top' -foregroundcolor green
    write-host '[2] ping check' -foregroundcolor green
    write-host '[3] drives' -foregroundcolor green
    $task = read-host 'Please select the task you wish to run'

    if ($task -eq '1'){
        gps | 
        sort -des cpu | 
        select -f 15
        }

    if ($task -eq '2') 
        {
        $ipchk = read-host 'Please enter IP you wish to check'
        while($True) 
            {
                test-connection $ipchk | foreach {
                        write-host $_.IPV4Address 'is stil active' -foregroundcolor cyan 
                    } |
                sleep 3; clear
            }
        }

    if ($task -eq '3')
        {
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
        }
    }
until ($task -eq 'q')