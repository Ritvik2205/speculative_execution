.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lfence
add dl, 35 # instrumentation
cmovnz rbx, rdi 
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax] 
sbb dl, -23 
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4 
cmovb eax, eax 
jnb .bb_0.1 
jmp .exit_0 
.bb_0.1:
cmp rcx, 55 
cbw  
setnl dl 
movzx ecx, dl 
cmovle rdi, rsi 
neg rax 
mov al, bl 
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 96 
setnz dil 
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi 
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
