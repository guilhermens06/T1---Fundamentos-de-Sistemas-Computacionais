# T1-Fundamentos-de-Sistemas-Computacionais
PUCRS <br>
Prof. Anderson Domingues <br>

Guilherme Niemxeski Santos - 25101197 <br>
Eduardo Pereira Duarte Demeneghi - 25105472 <br>
Lorenzo Azevedo Borghetti - 25101929 <br>
Victor Ribeiro Rodrigues Frade - 25103115 


# Problema 1:

---

Enunciado: Desenvolva um programa que escreva na memória os N primeiros números inteiros ímpares maiores que zero. Seu programa deverá ser N da memória e funcionar para qualquer valor de N. Os valores deverão ser escritos a partir do endereço 0x20 e aparecerem contiguamente na memória.

Explicação:
Este programa calcula os N primeiros números ímpares maiores que zero e armazena-os sequencialmente na memória. Como o próprio código do programa ocupa os endereços iniciais da memória (a partir de 0x00), foi escolhido o endereço 0x40 para iniciar a escrita dos resultados. Esta é uma decisão de design para garantir a segurança da execução, evitando que o programa sobrescreva suas próprias instruções, o que poderia acontecer se um endereço mais baixo fosse utilizado. O programa lê o valor de N da memória para controlar um laço e, ao final da execução, a memória a partir do endereço 0x40 conterá a sequência dos N primeiros números ímpares: 1, 3, 5, 7, e assim por diante.

---

print:

---

# Problema 2:

---

Enunciado: Desenvolva um programa capaz de gerar os N primeiros números da sequência de Fibonacci. Escreva cada número gerado na memória, a partir do endereço 0x30.

Explicação: Este programa gera os N primeiros números da sequência de Fibonacci, com o valor de N definido pelo label n. O programa inicia tratando os dois primeiros termos (1 e 1) como casos base e, em seguida, entra num laço para calcular os termos subsequentes, somando os dois anteriores. Uma decisão de design importante foi a escolha do endereço para iniciar a escrita dos resultados. Embora o enunciado original sugerisse um endereço mais baixo, o código utiliza o endereço 0x70. Esta escolha foi feita para garantir a segurança da execução, criando uma separação clara entre o código do programa (que começa em 0x00) e a área de dados. Isso evita que o programa, especialmente se for modificado ou expandido no futuro, corra o risco de sobrescrever e corromper as suas próprias instruções. Ao final da execução, a memória a partir deste endereço seguro conterá a sequência de Fibonacci: 1, 1, 2, 3, 5, 8, ..., até o N-ésimo termo.

---

print:

---

# Problema 3:

---

Enunciado: Escreva um programa para encontrar o maior número inteiro positivo escrito em memória entre os endereços 0x40 e 0x80. O número encontrado deverá ser escrito na posição 0x90.

Explicação: A sua execução ocorre em duas fases principais:

Fase de Preparação: Primeiro, o programa copia uma lista de números inteiros, definida internamente no código sob o label array, para o bloco de memória compreendido entre os endereços 0x50 e 0x90. Essencialmente, ele cria o seu próprio conjunto de dados de teste na memória antes de iniciar a busca.

Fase de Busca: Em seguida, o programa percorre a região que acabou de preencher (0x50 a 0x90), comparando cada valor com um registrador que armazena o máximo encontrado até o momento. Se um número maior é lido, o valor máximo é atualizado.

Ao final da execução, o maior número de toda a sequência é armazenado no endereço de memória 0xa0. É importante notar que os endereços de memória utilizados pelo código (0x50 a 0x90 para os dados e 0xa0 para o resultado) diferem dos especificados no enunciado original. O programa foi estruturado desta forma para ser um exemplo auto-contido e facilmente testável.

---

print: 

---

# Problema 4:

---

Enunciado: Escreva um programa que lê todos os valores escritos em memória entre as posições 0x40 e 0x80 e os escreve a partir da posição 0x90, somando 1 aos valores pares para que se tornem ímpares. Assim, todos os 64 primeiros valores na memória a partir de 0x90 devem ser ímpares.

Explicação: O algoritmo percorre um bloco de memória de origem, verificando cada número individualmente. Para determinar se um número é par ou ímpar, ele utiliza uma eficiente operação AND a nível de bit com o valor 1. Se o resultado for 0 (indicando um número par), o valor é incrementado em 1; caso contrário, é mantido como está. O número resultante é então escrito numa área de memória de destino. É importante notar que esta implementação específica lê os dados do intervalo de memória entre 0x3a e 0x60 e escreve os resultados a partir do endereço 0x80, um escopo que difere do enunciado original.

---

print:

---

# Problema 5:

---

Enunciado: Escreva um programa que procura entre os endereços 0x60 e 0x70 por dois números cuja soma seja igual a 10. Caso este números existam, a posição deles deverá ser escrita nos endereços 0x80 e 0x90.

Explicação: A sua execução é dividida em duas fases: primeiro, ele inicializa uma área de memória (entre os endereços 0x90 e 0xa0) com uma lista de números pré-definida no próprio código. Em seguida, ele executa o algoritmo de busca, que utiliza um laço aninhado para testar sistematicamente a soma de cada par único de números nessa lista. Caso um par que some 10 seja encontrado, os endereços de memória desses dois números são escritos nas posições 0xb0 e 0xb2, e o programa termina. Se nenhum par correspondente for encontrado, o programa simplesmente para. É importante notar que o programa opera sobre um conjunto de dados e endereços que são internos, tornando-o um exemplo auto-contido e pronto para testes.

---

print:

---

# Problema 6:

---

Enunciado: Escreva um programa que inverte a ordem dos valores compreendidos entre os endereços 0x40 e 0x60, isto é, os valores deverão aparecer "de trás pra frente" na memória. Você não deverá ler ou escrever em endereços de memória fora do intervalo entre 0x40 e 0x60.

Explicação: A execução é feita utilizando duas fases: primeiramente, inicializa em uma área de memória, entre 0x24 e 0x44, valores pré definidos pelo vetor "array", presente no final do código. Após isso é executado o laço ("loop") parte do código que, caso, e quando, v1 for igual a v0 leva ao fim do cógido ("end") que possui o comando hlt, encerrando oprograma. 

Enquanto tal caso não ocorre os valores, a cada iteração, são escritos de forma invertida na memória. Assim como no exercício 5, é notório relembrar que esse programa está operando sobre um vetor e endereços internos.

---

print:

---

# Problema 8:

---

Enunciado: Escreva um programa que escreve seu nome completo na saída do simulador. Se estiver trabalhando com uma dupla, escreva o nome de ambos os alunos. Exemplos de escrita na saída do simulador podem ser encontrados na pasta exemplo.

Explicação: A partir dos exemplos expostos e disponibilizados no github esse programa, escreve o nome dos quatro integrantes do grupo na saída do simulador. Para tal fato ocorrer, primeiro foi-se adicionado o texto desejado (os nomes) à v0. Após isso, o caracter presente em a0 é carregado para v0, esse ato, quando acabarem os caracteres fará com que a0 seja "igual" a zr. Logo, v0 nesse caso também será, o que levará à parte entitulada como "end". 

Caso ainda haja caracteres a serem carregados, o a0 irá primeiro escrever o caracter e depois partir para o próximo presente no text. Quando o programa é direcionado para o "end" primeiro ele gera um "espaçamento" para a visualização ocorrer de forma mais clara, por fim, coloca essa mudança no terminal, após isso o programa é encerrado.

---

print:

---

# Problema 9:

---

Enunciado: Escreva um programa que identifique se uma palavra é palíndrome. O número de caracteres na palavra deve ser lido do endereço 0x60 da memória, enquanto a palavra deve iniciar no endereço 0x70.

Explicação:

---

print:

---

# Problema 10:

---

Enunciado: Escreva um programa que conta o número de cada vogal em uma palavra. O número de letras A, E, I, O e U devem ser escritos, respectivamente, nos endereços 0x40, 0x44, 0x48, 0x50 e 0x52. A palavra deve ser lida a partir do endereço 0x60. A quantidade de letras na palavra deve ser lida do endereço 0x58.

Explicação: 
O programa lê da memória o comprimento e o endereço inicial de uma palavra e percorre cada caractere, comparando-o (em maiúscula e minúscula) com as vogais A, E, I, O e U. Para cada ocorrência encontrada de cada das vogais, o contador correspondente em posições específicas da memória é incrementado. Antes de iniciar as  comparções, todos os contadores são zerados. 
Caso, após as comparações, o caractere não for a vogal do método programa continua, partindo para a comparação com a próxima vogal, caso encontre-a o programa pula diretamente para o "loop continue". Dentro desse método o caractere é avançado, o contador de caracteres restante é diminuído e, caso esse  seja diferente de 0 o programa volta para o início do loop. Além disso, assim como no exercício 8, quando o  comprimento (a0) se igualar a 0, não houver mais caracteres a ser comaparados o programa é encerrado pelo "end".

---

print:

---
