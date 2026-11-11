.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
neg ax
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
xor al, 86
not rbx
sets cl
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
test rdi, 1238697264
adc bl, bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], -75
lea ax, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
movsx ax, al
adc si, -95
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
setnz dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
