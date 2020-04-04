/*	Written by Mexon
	On 3.3.20
	
	Converts a string to a char array
*/
stringToCharArray(str) {
	ret := []
	lth := strlen(str)
	loop %lth% 
		ret[ A_Index ] := substr(str, A_Index, 1)
	return ret
}