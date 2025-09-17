main
	ldw v0,zr,n      
    add v1,zr,1      
    add v2,zr,0x40   
    add v3,zr,0     

loop
    stw v1,v2,0      
    add v1,v1,2 	; mudança no número ímpar     
    add v2,v2,2 	; mudança no local de memória      
    add v3,v3,1 	; incremento no contador    
	bne v3,v0,loop   

    hlt             

n
	25
