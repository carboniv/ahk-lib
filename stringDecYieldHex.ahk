/*	String of Decimal to Hex
	Written by Mexon
	On 4.4.20
	
	Converts hex to decimal
	prefix optional
	length is maximum leading space not including 0x
*/
stringDecYieldHex(string, prefix, length) {
	
	chk := string
	ret := ""
	form := "{:" . (prefix ? "#" : "") . 0 . (prefix ? length+2 : length) . "x}" ;designates proper form
	while (chk != "") {
		spaceAt := instr(chk, " ") ;discovers space
		if(spaceAt) {
			slice := substr(chk, 1, spaceAt-1) ;items before space
			chk := substr(chk, spaceAt+1) ;skips space to parse
		}
		else{
			slice := chk ;end of parse
			chk := ""
		}
		
		slice := slice , slice += 0 ;makes slice a number
		
		ret .= format(form, slice) . " " ;appends to slice
	}
	
	ret := substr(ret,1, -1) ;clips end
	return ret
}