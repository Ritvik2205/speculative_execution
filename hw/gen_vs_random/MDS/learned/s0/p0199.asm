.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
or dil, -78
test dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
or cl, 30
or dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
