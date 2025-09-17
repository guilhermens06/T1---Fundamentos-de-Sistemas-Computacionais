main
	add a0,zr,palavra	; carregar a palavra
	add v1,zr,0xa0		; endereço de inicio da palavra
	add v2,zr,0		; inicialização do cont do número de caracteres
	add v6,zr,0		; contador que ajusta o endereço de memória posteriormente

; insere a palavra nas posições designadas de memória
inserir
	ldb v0,a0	
	stw v0,v1
	beq v0,zr,restore
	add a0,a0,1
	add v2,v2,1
	add v1,v1,2
	beq zr,zr,inserir
	
restore
	stw v2,zr,0x90		; armazena o número de caracteres
	add v3,zr,0xa0		; reinicializa a posição de memória para o início da palavra
	add v4,v1,6		; cria um ponteiro para reescrever a palavra invertida
	sub v1,v1,2		; ajuste para reposicionar o ponteiro para a última posição da palavra
	beq zr,zr,invertido

; escreve a palavra de forma invertida a partir de v4
invertido
	blt v1,v3,r2		
	ldw v5,v1
	stw v5,v4
	sub v1,v1,2		; decremento da posição de leitura
	add v4,v4,2		; incremento da posição de escrita
	add v6,v6,2		; contador para reinicializar os endereços de memória posteriormente
	beq zr,zr,invertido

; ajuste dos endereços de memória com v6
r2
	add v1,v6
	sub v4,v6
	beq zr,zr,c1

; compara a palavra normal com a invertida
c1
	beq v3,v1,pal		; se chegarmos ao fim da palavra normal, é palíndromo
	ldw v5,v3		; carrega a primeira posição da palavra normal
	ldw v6,v4		; carrega a primeira posição da palavra invertida
	bne v5,v6,n_pal		; se forem diferentes, não é palíndromo
	add v3,v3,2		
	add v4,v4,2

pal
	add v0,zr,sim
	stw v0,zr,0xf008	; escreve no terminal "s", para é palíndromo
	hlt

n_pal
	add v0,zr,nao
	stw v0,zr,0xf008	; escreve no terminal "n", para não é palíndromo
	hlt
	
palavra
	"arara"
sim
	"s"
nao
	"n"
