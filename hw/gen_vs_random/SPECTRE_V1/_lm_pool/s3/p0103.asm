.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, edx
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
test dl, -105
adc bl, -73
adc ax, -27488
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
xor dl, cl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
cmp ecx, 66
sbb dl, dl
cmovnp dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
