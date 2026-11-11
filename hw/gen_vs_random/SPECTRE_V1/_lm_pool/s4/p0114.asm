.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
test al, -75
sbb al, bl
or ecx, 16
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and bl, 124
xchg dil, dl
sub cl, al
adc cl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
