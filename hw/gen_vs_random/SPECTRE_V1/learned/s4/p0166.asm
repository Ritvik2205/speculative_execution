.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
and cl, dil
js .bb_0.1
jmp .exit_0
.bb_0.1:
and al, sil
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 99
xor al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
