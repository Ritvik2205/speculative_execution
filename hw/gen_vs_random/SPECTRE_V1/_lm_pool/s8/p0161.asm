.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ecx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
test dl, -7
test dil, -116
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
test al, -71
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, dil
xchg al, sil
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sub rax, -1628299544
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
