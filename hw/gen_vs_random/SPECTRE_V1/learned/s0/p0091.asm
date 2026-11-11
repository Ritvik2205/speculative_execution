.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
mov bl, sil
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
sub al, dil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, al
inc ebx
xor dl, al
sub cx, 20
add cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
