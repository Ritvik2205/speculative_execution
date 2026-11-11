.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdx
cmovle rdi, rsi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
or eax, 1802312508
xor al, 59
xor rbx, rdx
or cl, dil
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], di
cmp dil, dl
cmovp edi, eax
and rsi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
or dil, sil
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
sub rbx, rdx
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
xor cl, bl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 73
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
cmp esi, edi
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], edx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
test eax, -558243208
or cl, 8
adc bl, dl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
mov rcx, 5862286138240743445
cmovle rdi, rbx
sub rdx, 22
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
