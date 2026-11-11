.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
add dil, 72
add dl, 47
sbb bl, dil
jns .bb_0.3
jmp .exit_0
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
sbb eax, 1830317432
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
