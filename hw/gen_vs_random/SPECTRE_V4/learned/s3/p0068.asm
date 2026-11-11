.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and cl, 32
and sil, cl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
or rdx, rbx
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
sub dl, al
sub dil, -11
or ebx, -78
sbb cl, 35
cmp esi, 123
test dil, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
