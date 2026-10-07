.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
lfence
or dl, byte ptr [r14 + rdx] 
lfence
neg rsi 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
xor al, byte ptr [r14 + rsi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmp rbx, qword ptr [r14 + rbx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
bt qword ptr [r14 + rdi], 2 
lfence
bswap rdx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
add word ptr [r14 + rbx], dx 
lfence
bt eax, edi 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmp qword ptr [r14 + rdx], rcx 
lfence
js .bb_0.1 
jmp .exit_0 
.bb_0.1:
add dl, 63 # instrumentation
lfence
cmovl dx, di 
lfence
sbb ecx, -1 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sub qword ptr [r14 + rax], -97 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
inc word ptr [r14 + rdi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
and dl, byte ptr [r14 + rdx] 
lfence
xor cl, -103 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmp word ptr [r14 + rsi], cx 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
