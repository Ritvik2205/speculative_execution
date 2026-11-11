.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
sub rcx, 13
add cl, 42 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdx]
add bl, -43 # instrumentation
adc si, -23
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 41
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
dec sil
lea dx, qword ptr [rax + rdi]
cmovz eax, edx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], sil
test al, 84
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
cmovnbe ax, bx
test edx, eax
and rcx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rcx]
mov di, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
