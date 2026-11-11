.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -18
setno dl
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
xchg rsi, rdx
add al, 18
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
sbb sil, bl
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
