.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
sbb cl, dl
xor bl, al
sbb al, -4
jmp .bb_0.1
.bb_0.1:
jno .bb_0.2
jmp .exit_0
.bb_0.2:
lea eax, qword ptr [rsi + rsi + 37]
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
not esi
btc ax, cx
add al, 74
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
