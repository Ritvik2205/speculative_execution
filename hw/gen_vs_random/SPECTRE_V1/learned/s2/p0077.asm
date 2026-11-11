.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 113
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
sub dil, al
or al, dl
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
add bl, dl
sub dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
