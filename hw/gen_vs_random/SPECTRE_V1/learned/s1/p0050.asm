.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
add edx, 59
sbb bl, sil
test dil, -116
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rdx]
sbb cl, dil
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
cmovs bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
