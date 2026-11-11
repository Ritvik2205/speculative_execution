.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts bx, bx
and dl, -111
add dl, dl
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
lea dx, qword ptr [rax]
or al, 100
or cl, dil
sub al, cl
sub rcx, 13
or al, dil
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
