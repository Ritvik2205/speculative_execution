.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
and sil, -55
sub cl, dil
sub bl, -6
lea di, qword ptr [rdi + rdx]
adc dl, 80
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
adc sil, -77
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and dl, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
