.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -65
test cl, -62
mov dl, 84
sub al, 63
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
sbb bl, sil
sub cl, dl
lea edx, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
