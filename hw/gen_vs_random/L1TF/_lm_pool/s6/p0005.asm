.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
cmp eax, 951020724
btc di, bx
xchg eax, ebx
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
and ax, 7954
test al, -56
sbb al, 61
adc dil, bl
xor cl, dil
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
btc eax, 220
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
