.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 7954
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
xor edx, 95
bt edi, 72
add eax, 109
sub sil, cl
test bl, -92
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 15
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
