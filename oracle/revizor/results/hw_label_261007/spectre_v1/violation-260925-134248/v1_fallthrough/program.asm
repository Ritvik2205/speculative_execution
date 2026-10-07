.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx] 
xchg sil, sil 
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40 
cmovl rsi, rsi 
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx] 
setnb cl 
cmp sil, al 
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al 
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi] 
jnp .bb_0.1 
jmp .exit_0 
.bb_0.1:
add cl, 32 # instrumentation
sbb bl, cl 
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 4 
xor eax, 1034314125 
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16 
xor eax, -764881786 
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx] 
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx] 
.exit_0:
lfence
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
