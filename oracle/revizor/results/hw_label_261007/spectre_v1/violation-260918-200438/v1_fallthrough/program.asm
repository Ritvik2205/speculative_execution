.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax 
test rdi, 1238697264 
sets cl 
not rbx 
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi] 
xor al, -64 
adc bl, bl 
neg ax 
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax] 
jnle .bb_0.1 
jmp .exit_0 
.bb_0.1:
lea ax, qword ptr [rdx] 
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax 
movsx ax, al 
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], -75 
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx] 
setnz dil 
adc si, -95 
.exit_0:
lfence
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
