.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
cmp al, dl
xchg al, dl
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
sbb bl, 79
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
add dl, 47
setp bl
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
