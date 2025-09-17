main
	  add v0,zr,0x50  	; endereço inicial do vetor
	  add v1,zr,0      	; max inicial     
	  add v2,zr,0x90  	; endereço final do vetor
	  add v3,zr,array		

loop_array
	  beq v0,v2,restore	; preenchimento da memória
	  ldw v4,v3
	  stw v4,v0,0
	  add v0,v0,2
	  add v3,v3,2
	  beq zr,zr,loop_array

restore
	  add v0,zr,0x50
	  beq zr,zr,loop

loop
	  beq v0,v2,fim   	; se chegar no endereço final, branch para fim
	  ldw v5,v0,0      	; elem atual
	  blt v1,v5,atualizar_max ; se max < atual, branch para atualizar max
	  beq zr,zr,prox  	
	
atualizar_max
	  add v1,v5,0  
	  
prox
	  add v0,v0,2       ; ir para próximo endereço
	  blt v0,v2,loop   
	
fim
	  stw v1,zr,0xa0	  ; guardar max	
	  hlt             

array
	  1 2 3 4 5 6 7 8 45 5 34 23 1 23 57 54 4 3 2 2 10 15 20 25 30 35 40 50 8 6 0 19 45 32
