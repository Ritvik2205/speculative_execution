.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
and ax, 21910
sub al, sil
cmp al, cl
add al, -47
sub rcx, 13
sub bl, al
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
