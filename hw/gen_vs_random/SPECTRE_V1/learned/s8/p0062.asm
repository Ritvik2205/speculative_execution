.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
test al, 34
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdx, rbx
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
sbb bl, sil
bswap rcx
sub ax, -17837
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
xor eax, 55
and cx, 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
