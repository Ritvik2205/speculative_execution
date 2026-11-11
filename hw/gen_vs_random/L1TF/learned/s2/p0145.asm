.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rsi, rdx
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
sub dl, bl
and cl, dil
lea rax, qword ptr [rdi + rsi]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
sbb bl, -88
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
