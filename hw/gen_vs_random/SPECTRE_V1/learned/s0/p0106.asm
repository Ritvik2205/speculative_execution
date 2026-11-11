.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
test sil, 112
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
add dl, -15 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
bt ax, si
and rcx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rcx]
xchg rsi, rdi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
