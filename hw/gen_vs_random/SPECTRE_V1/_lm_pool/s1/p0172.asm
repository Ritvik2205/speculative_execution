.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], bx
sub sil, -18
sub cl, dl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
test cl, -24
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
sub sil, -18
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
