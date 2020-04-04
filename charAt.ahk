/*	Character at Index
	Written by Mexon
	On 3.31.20
	
	Returns the specified unmodified character at a location in a string
	Index begins at 1
	If index is greater than string length, returns ""
*/
charAt(string, index) {
	if(index > strlen(string))
		return ""
	return substr(string,index,1)
}