 .data
x:			.word	00110010010100100011100010101000
temp:		.word   0	
counter:	.word 	0
kalan:		.word	0
count0:		.word	0
count1:		.word	0
string1:	.asciiz "az!\n"
string2: 	.asciiz "fazla!\n"
string3: 	.asciiz "esit!\n"

.text

__start:   
while:				bgt counter,32,endwhile		# if (counter > 32) goto endwhile (32 Bitin tamamını kontrol ettiyse döngüden çık)
					#beq x,0,endwhile			# if (x == 0) goto endwhile (sayımız 0 a eşit olursa döngüye devam etmesine gerek yoktur)
					rem kalan,x,2				# 2 ye bölümününden sonra 0 mı 1 mi kaldığına bakarız. bunu kalan değişkenine atarız.
					div x,x,2					# x değişkeninde bulunan sayıyı 2 ye böleriz
					add sayac,sayac,1			# while döngüsü için sayaç değişkenini 1 arttırırız.
					beq kalan,1,bir				# if (kalan == 1) goto label
					add count0,count0+1			# eger kalan 0 ise bu degısken 1 artar.
					b while
					
bir:				add count1,count1+1			# count1 degiskenini 1 arttırırız.
					b while						# döngüye geri döneriz

endwhile:			blt count0,count1,az		# if (count0 < count1) goto az
					bgt count0,count1,fazla		# if (count0 > count1) goto fazla
					puts string3				# ekrana string3u yazdırır
					b bitir

az:					puts string1				# ekrana string1u yazdırır
					b bitir
					
fazla:				puts string2				# ekrana string2u yazdırır

bitir: