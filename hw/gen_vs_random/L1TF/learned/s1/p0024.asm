.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, ecx
xor al, cl
cmp bl, dil
and bl, 89
and dil, -82
xor dil, -42
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rdx + rsi]
cmp cx, 39
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
cmp al, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
