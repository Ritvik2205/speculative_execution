.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 84
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, sil
mov al, dl
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
sub al, -1
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
jns .bb_0.2
jmp .exit_0
.bb_0.2:
sub cl, sil
setb bl
or edx, 74
sub cl, dl
or dil, 98
add dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
