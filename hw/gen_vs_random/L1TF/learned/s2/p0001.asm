.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -95 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
sbb dl, -26
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 6
or rdx, 11
sbb bl, cl
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and al, -68
xor sil, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
