.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 34
and rdi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdi]
xor al, 89
and al, -68
and esi, 50
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
lea ecx, qword ptr [rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and dil, dil
and bl, bl
sbb eax, -403815802
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
