.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
sbb bl, al
and cx, 39
sbb cl, al
add dil, 72
jmp .bb_0.1
.bb_0.1:
sbb bl, al
lea dx, qword ptr [rbx + rax]
add ecx, 9
lea si, qword ptr [rdx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
