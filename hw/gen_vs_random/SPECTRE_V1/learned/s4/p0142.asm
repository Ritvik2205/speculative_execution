.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
lea cx, qword ptr [rax]
sub dil, cl
sub bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
