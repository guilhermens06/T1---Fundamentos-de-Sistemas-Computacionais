# T1-Fundamentos-de-Sistemas-Computacionais
Guilherme Niemxeski Santos - 25101197 <br>
Eduardo Pereira Duarte Demeneghi - 25105472 <br>
Lorenzo Azevedo Borghetti - 25101929 <br>
Victor Ribeiro Rodrigues Frade - 25103115 


# Problema 1:

---

Enunciado: Desenvolva um programa que escreva na memória os N primeiros números inteiros ímpares maiores que zero. Seu programa deverá ser N da memória e funcionar para qualquer valor de N. Os valores deverão ser escritos a partir do endereço 0x20 e aparecerem contiguamente na memória.

Explicação:
Este programa em Assembly para a arquitetura TRM calcula os N primeiros números ímpares maiores que zero e armazena-os sequencialmente na memória. O programa primeiro lê o valor de N da memória para determinar o número de repetições de um laço (loop). Dentro do laço, um registrador que guarda o número ímpar atual (começando em 1) tem o seu valor escrito numa posição de memória apontada por outro registrador, que começa no endereço 0x20. Após cada escrita, o valor do número ímpar é incrementado em 2 e o ponteiro de memória avança 2 bytes (uma "word"). Ao final da execução, a memória a partir do endereço 0x20 conterá a sequência dos N primeiros números ímpares: 1, 3, 5, 7, e assim por diante.

---

print:

---

# Problema 2:

# Problema 3:

# Problema 4:

# Problema 5:

# Problema 6:

# Problema 8:

# Problema 9:

# Problema 10:
