.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
adc dl, byte ptr [r14 + rcx] 
lfence
test sil, 87 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
dec dword ptr [r14 + rax] 
lfence
setns dl 
lfence
cmovnle rax, rax 
lfence
lea rcx, qword ptr [rdi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmp byte ptr [r14 + rcx], -32 
lfence
jnl .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
lfence
movsx rax, word ptr [r14 + rdi] 
lfence
mul rdi 
lfence
xchg si, ax 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rcx], di 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnp di, word ptr [r14 + rcx] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock add word ptr [r14 + rcx], di 
lfence
cmovs dx, cx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rbx], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
lfence
and dx, 0b11 # instrumentation
lfence
idiv word ptr [r14 + rbx] 
lfence
add al, 112 # instrumentation
lfence
setl dl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
