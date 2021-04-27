 .data
A:		.word	
BB:		.word	
C:		.word   
temp:	.word   	
	


.text

__start:   bgtz    A, ifpart		# if (A > 0) goto ifpart
	       mul     temp, BB, BB		# temp=BB*BB
	       add     c, temp, 12		# c=temp+12 (c=b*b+12)
		   b       endif
ifpart:	   mul     temp, 2, BB		# temp=2*BB
	       add     c, temp, 4		# c=temp+4 (c=2*b+4)
endif:

