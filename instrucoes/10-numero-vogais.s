main
	add a0,zr,palavra
	add v0,zr,0x120
	add v1,zr,0

inserir
	ldb v2,a0
	stw v2,v0
	beq v2,zr,restore
	add a0,a0,1
	add v0,v0,2
	add v1,v1,1
	beq zr,zr,inserir

restore
	add v0,zr,0x120
	add v2,zr,0
	add v5,zr,0
	add v6,zr,0
	add v7,zr,0
	stw v1,zr,0x130
	add v1,zr,0
	beq zr,zr,c1

c1
	ldw v3,v0
	beq v3,zr,end
	ldw v4,zr,a
	beq v3,v4,cont_a
	ldw v4,zr,A
	beq v3,v4,cont_a
	ldw v4,zr,e
	beq v3,v4,cont_e
	ldw v4,zr,E
	beq v3,v4,cont_e
	ldw v4,zr,o
	beq v3,v4,cont_o
	ldw v4,zr,O
	beq v3,v4,cont_o
	ldw v4,zr,i
	beq v3,v4,cont_i
	ldw v4,zr,I
	beq v3,v4,cont_i
	ldw v4,zr,u
	beq v3,v4,cont_u
	ldw v4,zr,U
	beq v3,v4,cont_u
	add v0,v0,2
	beq zr,zr,c1
	
cont_a
	add v1,v1,1
	add v0,v0,2
	beq zr,zr,c1
cont_e
	add v2,v2,1
	add v0,v0,2
	beq zr,zr,c1
cont_i
	add v5,v5,1
	add v0,v0,2
	beq zr,zr,c1
cont_o
	add v6,v6,1
	add v0,v0,2
	beq zr,zr,c1
cont_u
	add v7,v7,1
	add v0,v0,2
	beq zr,zr,c1

end
	stw v1,zr,0x140
	stw v2,zr,0x142
	stw v5,zr,0x144
	stw v6,zr,0x146
	stw v7,zr,0x148
	hlt

palavra
	"ornitorrinco"

a
	97
e
	101
i
	105
o
	111
u
	117
A
	65
E
	69
I
	73
O
	79
U
	85
