.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and cl, bl
test dl, 27
xor rdi, -9
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and ecx, -104
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 50
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
test edx, esi
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and dl, 59 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
xor sil, al
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
cmovnbe rax, rdx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
bt rbx, 241
and sil, 8 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
