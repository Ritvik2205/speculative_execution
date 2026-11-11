.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
dec cl
cmovz ebx, edx
movsx cx, al
xor ax, 13332
sbb sil, 24
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
dec dl
and al, -1
and bl, bl
cmp al, sil
mov cl, bl
xchg eax, ecx
imul rdi, rax, 89
cmp dl, bl
test dl, -125
test dl, al
sbb bl, -98
or al, dil
add dl, -82
sub cl, 78
cmp rax, -1547540200
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
sbb dil, dl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
cmp al, 105
btc rdi, rsi
test bx, 24072
and al, -118
and dl, al
sub bl, al
adc dl, cl
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
adc cl, sil
cmp al, 114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
