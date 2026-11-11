.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
not rbx
test rdi, 1238697264
adc bl, bl
xor al, 86
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
sets cl
neg ax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], -75
adc si, -95
movsx ax, al
setnz dil
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
