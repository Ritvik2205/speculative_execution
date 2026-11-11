.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33
sbb sil, al
add dl, sil
sub cl, dl
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
sbb dl, al
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and al, bl
test edx, 65
lea dx, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
