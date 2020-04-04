/*	String Yield ASCII values
	Written by Mexon
	On 3.1.20
	
	Takes a string and returns the equivalent ascii values in an array
*/
stringYieldAscii(string) {
	ret := ""
	loop % strlen(string) ;loops for length of string
		ret .= asc(substr(string,a_index,1)) . " " ;adds indexed char as ascii to return value
	ret := substr(ret,1,strlen(ret)-1) ;clips string
	return ret
}