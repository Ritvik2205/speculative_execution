.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lfence
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax] 
test ecx, -1134698714 
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx] 
cmovnbe rbx, rsi 
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -34 
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx] 
lea dx, qword ptr [rsi + rbx + 60147] 
cmovle rcx, rbx 
lea di, qword ptr [rdx + rbx] 
jnl .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], ax 
add dl, -124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rsi] 
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi] 
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax 
imul rdx, rdi 
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax 
adc sil, -115 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
