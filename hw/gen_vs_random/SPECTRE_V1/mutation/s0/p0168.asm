.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setns dl
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -32
cmovnle rax, rax
test sil, -101
lea rcx, qword ptr [rdi]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
xchg si, ax
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], di
cmovs dx, cx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
mul rdi
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
add al, 112 # instrumentation
setl dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
