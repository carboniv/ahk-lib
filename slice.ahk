/*	Slice and Chop String
	Written by Mexon
	On 4.4.20
	
	Slices string before delimiter
	Returns nothing if no delimiter found
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