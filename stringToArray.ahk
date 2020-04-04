/*	String to Array
	Written by Mexon
	On 3.30.20
	
	Converts a string to array with delmits
	If the delimit is "", seperates by character
*/
#include arrayToString.ahk

str := "a b c"

msgbox % arr2Str(str2arr(str, " "), "+")

;msgbox % arr2Str(num2arr(3), " ")

stringToArray(string, delim) {

	ret := Array()
	slice := ""
	idx = 1
	
	while idx <= (strlen(string)) { ;loop until index is greater than string
		char := substr(string, idx, 1) ;char to add
		tst := substr(string, idx, strlen(delim)) ;characters to test
		isDelim := (tst = delim)

		if (!isDelim){ ;adds char
			slice .= char
			idx++
		}
		if (isDelim || (idx > strlen(string))){ ;either delimiter found or last index
			if(slice != "") {
				ret.push(slice) ;pushes to return array
				slice := "" ;clears slice
			}
			idx += strlen(delim) ;skips past delim
		}
	}
	return ret
}

str2arr(str, dlm) {
	if (str = "")
		return
		
	fnum := inStr(str, dlm)
	if (fnum = 0)
		return [str]

	slice := substr(str,1,fnum-1)

	tvl := substr(str, fnum+strlen(dlm))

	ret := Array()
	ret.push(slice)
	ret.push(str2arr(tvl, dlm)*)
	return ret
}

num2arr(n) {
	if (n <= 0)
		return
	b := Array()
	b.push(n)
	b.push(num2arr(n-1)*)
	return b
	
}