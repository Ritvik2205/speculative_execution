.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 35 # instrumentation
lfence
cmovnz rbx, rdi 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
movsx ebx, word ptr [r14 + rax] 
lfence
sbb dl, -23 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock btc qword ptr [r14 + rdx], 4 
lfence
cmovb eax, eax 
lfence
jnb .bb_0.1 
jmp .exit_0 
.bb_0.1:
cmp rcx, 55 
lfence
cbw  
lfence
setnl dl 
lfence
movzx ecx, dl 
lfence
cmovle rdi, rsi 
lfence
neg rax 
lfence
mov al, bl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
xor byte ptr [r14 + rbx], 96 
lfence
setnz dil 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and rsi, 0b111 # instrumentation
lfence
bt qword ptr [r14 + rbx], rsi 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mov rax, qword ptr [r14 + rsi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
