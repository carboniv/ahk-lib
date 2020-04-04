/*	Array Yield ASCII values
	Written by Mexon
	On 3.1.20
	
	Takes an array of strings/numbers and returns the equivalent ascii values in an array
*/

arrayYieldAscii(arr) {
	ret := []
	loop % arr.maxIndex() {
		ret [ a_index ] := Asc(arr[ a_index ])
	}
	return ret
}