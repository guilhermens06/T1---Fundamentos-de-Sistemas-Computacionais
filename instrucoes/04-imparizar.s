main
	add v0, zr, 0x3a   ; endereço inicial de checagem
	add v1, zr, 0x62   ; endereço final de checagem
	add v2, zr, 0x80   ; endereço inicial de escrita dos impares

checar
	beq v0, v1, fim  	; se endereço inicial = endereço final, branch fim
	ldw v3, v0, 0      	; ler valor inicial do vetor
	and v4, v3, 1    	; verificar se o valor é par
	beq v4, zr, imparizar	; se valor for par, valor + 1; se já for impar, valor não muda
	stw v3, v2, 0      	; armazenar valor impar na memória
	beq zr, zr, prox   	

imparizar
	add v3, v3, 1   ; valor + 1
	stw v3, v2, 0      ; armazenar valor imparizado na memória

prox
	add v0, v0, 2      ; prox posição de checagem
	add v2, v2, 2      ; prox posição de leitura
	blt v0, v1, checar

fim
	hlt		

; Array na memória automaticamente
array
	14 3 56 7 2 89 45 34 23 12 78 11 9 27 54 6 4 33 25 17 40
