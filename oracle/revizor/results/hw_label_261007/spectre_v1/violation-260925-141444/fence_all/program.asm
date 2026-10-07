.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
lfence
add rcx, qword ptr [r14 + rax] 
lfence
test ecx, -1134698714 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
add bl, byte ptr [r14 + rbx] 
lfence
cmovnbe rbx, rsi 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
xor byte ptr [r14 + rdi], -34 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
and cl, byte ptr [r14 + rdx] 
lfence
lea dx, qword ptr [rsi + rbx + 60147] 
lfence
cmovle rcx, rbx 
lfence
lea di, qword ptr [rdx + rbx] 
lfence
jnl .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lfence
and ax, 0b111 # instrumentation
lfence
lock bts word ptr [r14 + rcx], ax 
lfence
add dl, -124 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovle ebx, dword ptr [r14 + rsi] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rdx, qword ptr [r14 + rdi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and ax, 0b111 # instrumentation
lfence
bts word ptr [r14 + rsi], ax 
lfence
imul rdx, rdi 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
xchg word ptr [r14 + rbx], ax 
lfence
adc sil, -115 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
