.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
xor ecx, 53
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmp ax, -6940
sub rax, -15
xor dil, dl
and bl, sil
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
