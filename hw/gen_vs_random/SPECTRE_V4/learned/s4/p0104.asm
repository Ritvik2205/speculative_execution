.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
and sil, dl
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add rcx, rdx
adc al, 69
not ecx
xor cl, bl
add rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], si
add cl, cl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
sbb dl, sil
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and rdi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdi]
sub rsi, 26
cmovz eax, eax
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
cmovnz edx, ecx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
cmovnbe rcx, rax
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 2
btc ebx, 94
sbb cl, bl
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add dl, dil
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
cmp bl, 13
lea edx, qword ptr [rbx]
mov dil, -118
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
cmovb di, di
bts rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
