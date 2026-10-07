.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -5 
lfence
xor rax, -68 
lfence
not ebx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rax, qword ptr [r14 + rsi] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
neg dword ptr [r14 + rax] 
lfence
or ax, 31571 
lfence
lea ecx, qword ptr [rcx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnp di, word ptr [r14 + rdx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sbb word ptr [r14 + rdx], 52 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rcx], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
lfence
and rdx, 0b11 # instrumentation
lfence
idiv qword ptr [r14 + rcx] 
lfence
jmp .bb_0.1 
.bb_0.1:
mov dl, cl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rsi], edx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovle ebx, dword ptr [r14 + rax] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
mul word ptr [r14 + rbx] 
lfence
or rcx, 0b1000000000000000000000000000000 # instrumentation
lfence
bsf rdi, rcx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rcx], 1 # instrumentation
lfence
mov ax, 1 # instrumentation
lfence
div byte ptr [r14 + rcx] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
