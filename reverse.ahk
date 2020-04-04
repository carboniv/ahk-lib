/*	Reverse
	Written by Mexon
	On 4.2.20
	
	Reverses the arguments cardinal positions
*/

reverse(arr) {
	loop, parse, arr
			rvr=%A_LoopField%%rvr%
	return rvr
}

rev(arr) {
	return (arr != "" ? rev2(substr(arr,2)) . substr(arr,1,1) : "")
}