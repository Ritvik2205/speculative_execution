.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 72
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
mul ax
test dl, al
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 15
cmp al, -52
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
adc bl, 89
cmp al, 114
sbb al, sil
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
dec si
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdi
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
cmp cl, 75
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
sub esi, ebx
not rdi
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 43
sub dil, -10
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 31
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
test bl, 24
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
cmovnl rbx, rdi
lea rsi, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
dec bl
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
cmp cl, cl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
