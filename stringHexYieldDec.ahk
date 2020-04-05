/*	String of Hex to Decimal
	Written by Mexon
	On 4.4.20
	
	Converts hex to decimal
	0x prefix not necessary
*/

stringHexYieldDec(string) {
	ret := ""
	chk := string
	
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
		
		if(!instr(slice, "0x")) { ;checks if value has prefix
			slice := "0x" . slice
		}
		
		slice := slice , slice += 0 ;makes slice a number
		
		ret .= slice . " " ;appends to slice
	}
	
	ret := substr(ret,1, -1) ;clips end
	return ret
}








