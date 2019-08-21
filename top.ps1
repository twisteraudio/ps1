While(1) 
	{
	gps -computername Z1ll4| 
	sort -des cpu | 
	select -f 15 |
	format -a; sleep 1; cls
}
