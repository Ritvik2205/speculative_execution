.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 40 # instrumentation
btc rsi, rsi
xor cl, sil
sub sil, -99
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi], 55
lea ax, qword ptr [rcx + rsi + 82]
cmp dil, 44
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
