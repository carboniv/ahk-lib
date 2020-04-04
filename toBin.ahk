/*	Decimal/Hex to Binary Converter
	Written by Mexon
	On 4.2.20
	
	Converts a decimal to binary with endianess
	Using an 0x prefix will convert from hex
*/
toBin(dec) {
	while dec
		ret := 1&dec ret, dec >>= 1
	return ret
}

bin(d){
	return (d>>1 ? bin(d>>1) : "") d&1 
}