.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
and ax, 26813
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
xor dil, sil
and sil, 93
and bl, bl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
btc ax, cx
sbb dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
