.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, bx
or sil, al
cmovp rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
btr ax, 193
xor cl, -13
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and bl, -116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
and cl, 126 # instrumentation
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
xor sil, al
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 93
btc rdi, rdi
and rsi, 65
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
cmovz ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
