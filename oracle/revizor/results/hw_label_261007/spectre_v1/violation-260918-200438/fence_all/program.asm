.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
lfence
mov qword ptr [r14 + rdi], rax 
lfence
test rdi, 1238697264 
lfence
sets cl 
lfence
not rbx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnz bx, word ptr [r14 + rsi] 
lfence
xor al, -64 
lfence
adc bl, bl 
lfence
neg ax 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmp cl, byte ptr [r14 + rax] 
lfence
jnle .bb_0.1 
jmp .exit_0 
.bb_0.1:
lea ax, qword ptr [rdx] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rdi], eax 
lfence
movsx ax, al 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
add dword ptr [r14 + rax], -75 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
adc al, byte ptr [r14 + rdx] 
lfence
setnz dil 
lfence
adc si, -95 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
