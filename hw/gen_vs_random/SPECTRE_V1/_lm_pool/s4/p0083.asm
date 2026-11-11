.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb edx, ecx
cmp bl, al
sub al, -1
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 65
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, dil
xchg rax, rcx
jp .bb_0.2
jmp .exit_0
.bb_0.2:
mov cl, sil
sbb rsi, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
