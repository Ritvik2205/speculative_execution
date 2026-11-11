.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
sub dl, 96
xor dil, -37
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
xor al, 78
sub rax, -1628299544
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
