.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
add sil, -68
cmp rbx, 57
sub cl, bl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], dx
inc eax
sub dl, bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
sbb bl, 79
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
