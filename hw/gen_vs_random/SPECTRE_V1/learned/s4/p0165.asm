.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 5
adc dx, -112
test al, 48
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
cmovnz rsi, rcx
sub dil, -32
mov cl, dl
sbb al, 118
adc dil, 59
inc edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
