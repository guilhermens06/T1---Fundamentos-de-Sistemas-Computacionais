main
	add a0,zr,text		

loop
	ldb v0,a0		; v0 = a0
	stw v0,zr,0xf006	; print caractere
	beq v0,zr,end		
	add a0,a0,1		; incremento do texto
	beq zr,zr,loop		
end
	add v0,zr,10		; \n
	stw v0,zr,0xf006	; colocar \n no terminal
	hlt

text	
	"Eduardo, Guilherme e Victor"
