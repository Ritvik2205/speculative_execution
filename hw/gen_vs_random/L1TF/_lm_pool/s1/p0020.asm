.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea di, qword ptr [rdi + rdx]
lea ebx, qword ptr [rsi + rsi + 37]
bt rax, rbx
and dil, cl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 2
sbb ecx, 74
or ax, -10161
cmovle rbx, rdx
or edi, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
