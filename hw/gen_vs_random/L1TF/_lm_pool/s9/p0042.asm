.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
sub sil, -99
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -27
bts eax, 232
or cl, bl
setno sil
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
