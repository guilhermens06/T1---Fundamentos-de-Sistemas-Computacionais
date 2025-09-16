# T1-Fundamentos-de-Sistemas-Computacionais
Guilherme Niemxeski Santos - 25101197 <br>
Eduardo Pereira Duarte Demeneghi - 25105472 <br>
Lorenzo Azevedo Borghetti - 25101929 <br>
Victor Ribeiro Rodrigues Frade - 25103115 


# Problema 1:

---

Enunciado: Desenvolva um programa que escreva na memória os N primeiros números inteiros ímpares maiores que zero. Seu programa deverá ser N da memória e funcionar para qualquer valor de N. Os valores deverão ser escritos a partir do endereço 0x20 e aparecerem contiguamente na memória.

Explicação:
Este programa em Assembly para a arquitetura TRM calcula os N primeiros números ímpares maiores que zero e armazena-os sequencialmente na memória. Como o próprio código do programa ocupa os endereços iniciais da memória (a partir de 0x00), foi escolhido o endereço 0x40 para iniciar a escrita dos resultados. Esta é uma decisão de design para garantir a segurança da execução, evitando que o programa sobrescreva suas próprias instruções, o que poderia acontecer se um endereço mais baixo fosse utilizado. O programa lê o valor de N da memória para controlar um laço e, ao final da execução, a memória a partir do endereço 0x40 conterá a sequência dos N primeiros números ímpares: 1, 3, 5, 7, e assim por diante.

---

print:

---

# Problema 2:

---

Enunciado: Desenvolva um programa capaz de gerar os N primeiros números da sequência de Fibonacci. Escreva cada número gerado na memória, a partir do endereço 0x30.

Explicação:

---

print:

---

# Problema 3:

---

Enunciado: Escreva um programa para encontrar o maior número inteiro positivo escrito em memória entre os endereços 0x40 e 0x80. O número encontrado deverá ser escrito na posição 0x90.

Explicação:

---

print: 

---

# Problema 4:

---

Enunciado: Escreva um programa que lê todos os valores escritos em memória entre as posições 0x40 e 0x80 e os escreve a partir da posição 0x90, somando 1 aos valores pares para que se tornem ímpares. Assim, todos os 64 primeiros valores na memória a partir de 0x90 devem ser ímpares.

Explicação:

---

print:

---

# Problema 5:

---

Enunciado: Escreva um programa que procura entre os endereços 0x60 e 0x70 por dois números cuja soma seja igual a 10. Caso este números existam, a posição deles deverá ser escrita nos endereços 0x80 e 0x90.

Explicação:

---

print:

---

# Problema 6:

---

Enunciado: Escreva um programa que inverte a ordem dos valores compreendidos entre os endereços 0x40 e 0x60, isto é, os valores deverão aparecer "de trás pra frente" na memória. Você não deverá ler ou escrever em endereços de memória fora do intervalo entre 0x40 e 0x60.

Explicação:

---

print:

---

# Problema 8:

---

Enunciado: Escreva um programa que escreve seu nome completo na saída do simulador. Se estiver trabalhando com uma dupla, escreva o nome de ambos os alunos. Exemplos de escrita na saída do simulador podem ser encontrados na pasta exemplo.

Explicação:

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

---

print:

---
