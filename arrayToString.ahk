/*	Array to String
	Written by Mexon
	On 3.30.20
	
	Converts an array to String seperated by given delimter
*/
arrayToString(array, delim) {
	ret := "["
	for ind, val in array {
		ret .= val . delim
	}
	if delim != ""
		ret := SubStr(ret,1,StrLen(ret)-strlen(delim)) ;clips delimter
	return ret . "]"
}

arr2Str(arr, dlm) {
	return ((arr.maxIndex() > 1) ? (arr.remove(1) . dlm . arr2Str(arr, dlm)) : arr.remove(1) . "]")
}