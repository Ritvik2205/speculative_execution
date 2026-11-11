.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -113
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
add edx, 56
test dil, -126
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, cl
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
cmovs bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
