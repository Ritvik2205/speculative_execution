.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, dx
lea eax, qword ptr [rdx]
cmovnle rcx, rax
or dil, -113
lea rsi, qword ptr [rdx + rbx]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
sbb bl, cl
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
cmp cl, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
