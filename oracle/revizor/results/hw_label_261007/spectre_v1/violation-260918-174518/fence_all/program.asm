.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 87 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sbb rax, qword ptr [r14 + rdx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
and al, byte ptr [r14 + rdx] 
lfence
adc cl, al 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
lfence
bsf rdi, qword ptr [r14 + rax] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock add byte ptr [r14 + rcx], 95 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnp ax, word ptr [r14 + rdi] 
lfence
jnp .bb_0.1 
jmp .exit_0 
.bb_0.1:
add cl, -83 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
sbb eax, dword ptr [r14 + rsi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmp rbx, qword ptr [r14 + rsi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
imul rax, qword ptr [r14 + rbx] 
lfence
cmovnb bx, si 
lfence
xor si, 23 
lfence
mov bl, bl 
lfence
lea si, qword ptr [rcx + rbx + 46193] 
lfence
xor rax, -2035087432 
lfence
adc sil, -18 
lfence
add bl, dl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
