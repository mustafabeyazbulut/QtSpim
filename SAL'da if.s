 .data
A:		.word	
B:		.word	
C:		.word   
temp:	.word   	
	


.text

__start:   bgtz    A, ifpart
	       mul     temp, B, B
	       add     c, temp, 12
		   b       endif
ifpart:	   mul     temp, 2, B
	       add     c, temp, 4
endif:

