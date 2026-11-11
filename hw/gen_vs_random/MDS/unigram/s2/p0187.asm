.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt esi, ebx
test bl, al
test dil, dil
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
test cl, cl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
xor rbx, 89
cmovns ecx, edx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ecx
and rsi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
cmovno rsi, rcx
bt rbx, rdi
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 23
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
xor ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
test dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
