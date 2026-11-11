.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
cmp rdx, 88
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
sbb cl, -11
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
sbb cl, dil
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
