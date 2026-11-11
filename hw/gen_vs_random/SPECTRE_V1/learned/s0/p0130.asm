.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
lea di, qword ptr [rdx]
or ax, -114
add sil, -68
sbb cl, dil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, dl
add eax, 1938514106
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
