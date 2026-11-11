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
and al, byte ptr [r14 + rdi]
cmovb bx, bx
cmovno esi, ecx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ecx
add bl, -6 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
