.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
lfence
imul eax, dword ptr [r14 + rdx] 
lfence
xchg sil, sil 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock or qword ptr [r14 + rcx], -40 
lfence
cmovl rsi, rsi 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
mov bl, byte ptr [r14 + rcx] 
lfence
setnb cl 
lfence
cmp sil, al 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mov byte ptr [r14 + rsi], al 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mov ax, word ptr [r14 + rsi] 
lfence
jnp .bb_0.1 
jmp .exit_0 
.bb_0.1:
add cl, 32 # instrumentation
lfence
sbb bl, cl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
btr qword ptr [r14 + rsi], 4 
lfence
xor eax, 1034314125 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock or qword ptr [r14 + rdi], 16 
lfence
xor eax, -764881786 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock inc dword ptr [r14 + rcx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
setnl byte ptr [r14 + rdx] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
