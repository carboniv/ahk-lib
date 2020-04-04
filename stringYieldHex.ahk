/*	String Yielding Hex
	Written by Mexon
	On 4.1.20
	
	Converts a string to a hex with endianness and possible prefix
	0 = small endianness
	1 = big endianness
	any other number 
	
	0 = no prefix
	1 = prefix
*/
stringYieldHex(string, endianness, prefix) {
	ret := ""
	loop % strlen(string) {
		index := a_index
		if (endianness = 0)
			index := strlen(string)-a_index+1 ;works its way backwards
		char := asc(substr(string, index))	
		
		form := "{:x}"
		if (prefix =1)
			form := ("{:#x}", char) ;adds 0x prefix8
		ret .= format(form, char) . " "
	}
	ret := substr(ret, 1, strlen(ret)-1) ; clips string
	return ret
}





