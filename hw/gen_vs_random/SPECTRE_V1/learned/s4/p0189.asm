.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
test sil, -101
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
setns dl
cmovnle rax, rax
lea rcx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -32
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
mul rdi
xchg si, ax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
cmovl rcx, rdi
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
or rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
