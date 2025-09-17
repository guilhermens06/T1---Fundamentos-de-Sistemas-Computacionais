main
	ldw v0,zr,n
	add v1,zr,1
	add v2,zr,1
	add v3,zr,0
	add v4,zr,0x70
	stw v1,v4,0 	; guardar valor inicial na memória
	add v3,v3,1		; incremento do contador
	beq v3,v0,end
	add v4,v4,2		; incremento da memória
	stw v2,v4,0		; guardar valor inicial na memória
	add v3,v3,1
	beq v3,v0,end
	add v4,v4,2

fibonacci
	add v5,zr,0		; inicialização da var auxiliar
	add v5,v2		; add v2 na var auxiliar
	add v2,v1		; soma do anterior com v2
	sub v1,v1		; reset do anterior
	add v1,v5		; atualização de v1 com a var auxiliar
	stw v2,v4,0
	add v3,v3,1
	beq v3,v0,end
	add v4,v4,2
	beq zr,zr,fibonacci

end
	hlt

n
	20
