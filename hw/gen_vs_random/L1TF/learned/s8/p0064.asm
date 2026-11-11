.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
adc al, bl
sbb cl, dl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
add cl, al
btc di, dx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 38
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
