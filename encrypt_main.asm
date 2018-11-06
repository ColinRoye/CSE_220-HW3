.data
adfgvx_grid: .asciiz "NA1CEH8TB2OM35WRPD4F6G7I9J0KLQSUVXYZ"
plaintext1: .asciiz "THEWAYOFKINGSLIFEBEFOREDEATH"
keyword1: .asciiz "KNIGHTS"
ciphertext1: .ascii "?????????????????????????????????????????????????????????" # result is 78 chars + null-terminator
.asciiz "!!!!!!"

plaintext2: .asciiz "THEIMMORTALWORDS"
keyword2: .asciiz "KNIGHTS"
ciphertext2: .ascii "????????????????????????????????????" # result is 35 chars + null-terminator
.asciiz "!!!!!!"

.text
.globl main
main:
la $a0, adfgvx_grid
la $a1, plaintext1
la $a2, keyword1
la $a3, ciphertext1
jal encrypt

la $a0, ciphertext1
li $v0, 4
syscall
li $a0, '\n'
li $v0, 11
syscall

la $a0, adfgvx_grid
la $a1, plaintext2
la $a2, keyword2
la $a3, ciphertext2
jal encrypt

la $a0, ciphertext2
li $v0, 4
syscall
li $a0, '\n'
li $v0, 11
syscall

li $v0, 10
syscall



.include "hw3.asm"
