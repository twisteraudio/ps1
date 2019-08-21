#start-job -name 'pingchk' -scriptblock 
while($True) 
{
    test-connection 192.168.86.1 | 
    foreach {
        write-host $_.IPV4Address 'is stil active' -foregroundcolor cyan 
    } |
    sleep 3; clear
}
