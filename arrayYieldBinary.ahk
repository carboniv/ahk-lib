/*	Array Ascii to Hex
	Written by Mexon
	On 4.1.20
	
	Converts an array of 
	May consider option for prefix
*/
#include toBin.ahk

arrayYieldBinary(arr, prefix) { ;possible prefix
	ret := []
	loop % arr.maxIndex() {
		ret[A_Index] := (prefix ? "0b" : "") . bin(arr[A_Index])
	}
	
	return ret
}