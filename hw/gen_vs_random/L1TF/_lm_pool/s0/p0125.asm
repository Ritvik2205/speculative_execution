.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
xor cl, 89
test bl, 84
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
test cl, 10
test edx, -541774418
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
