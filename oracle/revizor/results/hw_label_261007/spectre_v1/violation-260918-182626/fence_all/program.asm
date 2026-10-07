.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
lfence
imul qword ptr [r14 + rdx] 
lfence
bts rbx, 140 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovb bx, word ptr [r14 + rdx] 
lfence
dec dl 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock or byte ptr [r14 + rdx], dl 
lfence
cmovnp dx, cx 
lfence
loopne .bb_0.1 
jmp .exit_0 
.bb_0.1:
test sil, 112 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and dl, byte ptr [r14 + rsi] 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock bts dword ptr [r14 + rdx], 2 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmp byte ptr [r14 + rcx], cl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rbx], 642565565 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
sub cl, byte ptr [r14 + rdi] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rax], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rax], 0b11111000 # instrumentation
lfence
and edx, 0b11 # instrumentation
lfence
idiv dword ptr [r14 + rax] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov rax, qword ptr [r14 + rdx] 
lfence
xchg si, ax 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rdi], -94 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
