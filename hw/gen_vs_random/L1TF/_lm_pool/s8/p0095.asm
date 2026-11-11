.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
cwde
or ax, -10161
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
lea si, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdi]
bswap rsi
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
