/*	Array Yielding Hex Values
	Written by Mexon
	On 4.1.20
	
	Converts an array of ascii to hex with endianness 0 is small 1 is big
	May consider option for prefix
*/
arrayYieldHex(arr, endianness, prefix) { ;possible prefix
	ret := []
	loop % arr.maxindex() {
		index := a_index 
		if(endianness = 0)
			index := arr.maxindex() - a_index+ 1
		char := arr[index]
		
		form := "{:x}"
		if (prefix = 1)
			form := "{:#x}"
		ret[index] := format(form, char)
			
	}
	return ret
}