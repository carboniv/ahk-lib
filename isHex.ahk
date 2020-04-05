/*	Is Hexadecimal
	Written by Mexon
	On 4.4.20
	
	Checks if given string is hex format
	Containing any character not 0-9, a-f case ignored, or space (" ") will return false
*/
;#include slice.ahk

isHex(string) {
	hx := instr(string, "0x") ;finds 0x
	if(hx)
		string := substr(string, hx+2) ;removes for regex, 
	
	rx := regexmatch(string, "-?[^0-9a-fA-F]+")
	
	return (rx < 1)
}
/*
	checks string of hex
*/
isOnlyHex(string) {
	while(string) {
		slice := slice(string, " ")
		if(!isHex(slice))
			return false
		string := chop(string, " ")
	}
	return true
}
/*
	addititves
*/
/*
	
*/
slice(string, delim) {
	return (instr(string, delim) ? substr(string, 1, instr(string, delim)-strlen(delim)) : "")
}

/*
	Returns string after first delimiter
*/
chop(string, delim) {
	delimAt := instr(string, delim) + 0
	if(!delimAt)
		return ""	
	ret := substr(string, delimAt+strlen(delim))
	return ret
}