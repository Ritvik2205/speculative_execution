.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 42
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
bt esi, ecx
sub dil, -111
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1194753120
lea rbx, qword ptr [rdi + rax + 69]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 73
and dx, 92
add ax, 23362
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
