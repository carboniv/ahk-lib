/*	Character(single length string) to Ascii
	Written by Mexon
	On 4.1.20
	
	Converts an array of characters to ascii
	WARNING: will only use the first character of the given string
*/
arrayCharYieldAscii(arr) {	
	ret := []
	loop % arr.maxIndex() {
		ret [ a_index ] := asc(arr[ a_index ])
	}
	return ret
}
