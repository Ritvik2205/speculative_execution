.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
lea rbx, qword ptr [rdi + rdi + 67]
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
inc bl
sbb sil, 19
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and cl, cl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], cl
test dil, -126
and al, -68
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
