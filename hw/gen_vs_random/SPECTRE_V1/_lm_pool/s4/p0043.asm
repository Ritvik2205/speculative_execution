.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb sil, dl
and bl, -43
lea di, qword ptr [rsi + rdx]
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
add dl, dil
sbb dl, bl
sbb cl, dil
lea rbx, qword ptr [rax + rsi + 25]
sbb al, bl
sbb edx, 105
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 97
sub dl, 96
lea eax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
