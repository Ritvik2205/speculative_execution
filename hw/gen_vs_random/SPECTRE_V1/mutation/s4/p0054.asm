.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rbx
xor al, -64
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
neg ax
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
sets cl
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
adc bl, bl
test rdi, 1238697264
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rdx]
movsx ax, al
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], -75
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
adc si, -95
setnz dil
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
