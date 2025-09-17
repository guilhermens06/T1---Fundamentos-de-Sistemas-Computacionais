main
	add v0,zr,0x90		; endereço inicial
	add v1,zr,0xa0		; endereço final
	add v2,zr,array		; para inserção do vetor na memória
	add v4,zr,0x92		; endereço auxiliar
	add v5,zr,10		; soma alvo
	add v7,zr,0		; contador (explicado mais abaixo)
	add v8,zr,6		; contador (explicado mais abaixo)
	
loop_array			
	beq v0,v1,restore	; inserção do vetor na memória
	ldw v3,v2
	stw v3,v0,0
	add v2,v2,2
	add v0,v0,2
	beq zr,zr,loop_array
	
restore
	add v0,zr,0x90		; restaura v0 para o endereço inicial
	beq zr,zr,c1

c1
	beq v8,zr,falha
	add v6,zr,0
	ldw v2,v0
	ldw v3,v4
	add v6,v2		; soma do primeiro número
	add v6,v3		; soma do segundo número
	beq v6,v5,sucesso	; se soma v2 + v3 = 10
	bne v6,v5,c2		; caso contrário

c2
	add v4,v4,2		; atualização da variável auxiliar de memória
	add v7,v7,1		; incremento do primeiro contador
	beq v7,v8,c3		; se contador_1 = contador_2
	beq zr,zr,c1

; se v7 = v8, significa que a comparação do primeiro endereço de memória com todos os outros foi concluída
; então, há um decremento em v8, com o intuito de evitar repetição de comparações, e uma reinicialização de v7.

c3
	add v7,zr,0		; reinicialização do primeiro contador
	add v0,v0,2		; incremento da posição inicial de memória
	sub v8,v8,1		; decremento do segundo contador
	add v4,v0,2		; reinicialização do endereço auxiliar de memória
	beq zr,zr,c1
	
sucesso				
	stw v0,zr,0xb0		; escrever os números na memória, se soma = 10
	stw v4,zr,0xb2
	hlt

falha				
	hlt			; apenas hlt se soma != 10

array
	4 12 4 3 7 21 9 4
