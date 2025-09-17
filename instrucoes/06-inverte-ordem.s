main
	add v0,zr,0x24		; endereço inicial do vetor
	add v1,zr,0x44		; endereço final do vetor
	add v3,zr,0x50		; endereço inicial de escrita do vetor invertido

; percorre-se o vetor de trás pra frente
loop	
	beq v1,v0,end		; se endereço final = inicial, branch para end
	ldw v2,v1		; carregar elemento do endereço final
	stw v2,v3,0		
	add v3,v3,2		; incremento do endereço de escrita
	sub v1,v1,2		; decremento do endereço final
	beq zr,zr,loop

end 
	hlt

; o vetor é automaticamente carregado na memória
array
	2 3 4 5 3 4 5 3 5 78 5 4 3 23 5 21 8
