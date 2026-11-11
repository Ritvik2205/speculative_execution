.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 21
add dil, cl
and ax, 26813
adc al, -103
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 8
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and dl, bl
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
