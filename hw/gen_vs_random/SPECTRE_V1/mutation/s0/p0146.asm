.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rbx
neg ax
sets cl
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
adc bl, bl
test rdi, 1238697264
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
xor al, -64
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc si, -95
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], -75
setnz dil
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
movsx ax, al
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
lea ax, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
