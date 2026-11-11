.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
test dl, 113
sbb cl, al
sub rdi, 15
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 13
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, dil
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
bswap rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
