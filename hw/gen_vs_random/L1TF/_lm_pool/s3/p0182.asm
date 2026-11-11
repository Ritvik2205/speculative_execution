.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
add rdi, 57
and rcx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor dl, bl
add bl, al
add cl, -20
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 81
lea si, qword ptr [rax + rcx]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
btc si, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
