.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 87 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx] 
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx] 
adc cl, al 
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax] 
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 95 
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi] 
jnp .bb_0.1 
jmp .exit_0 
.bb_0.1:
add cl, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi] 
and rsi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rsi] 
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx] 
cmovnb bx, si 
xor si, 23 
mov bl, bl 
lea si, qword ptr [rcx + rbx + 46193] 
xor rax, -2035087432 
adc sil, -18 
add bl, dl 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
