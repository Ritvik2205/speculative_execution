.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sub al, cl
sub al, -66
or cl, dl
sub al, sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
and di, 23
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
xchg al, dl
mov dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
