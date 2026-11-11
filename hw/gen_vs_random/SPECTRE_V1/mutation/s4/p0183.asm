.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdi, 1238697264
sets cl
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
not rbx
xor al, -41
neg ax
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
adc bl, bl
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc si, -95
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], -75
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
setnz dil
movsx ax, al
lea ax, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
