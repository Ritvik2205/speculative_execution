.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap ecx
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
cmovnle rdx, rdi
bt si, cx
cmovp ax, si
xor eax, ebx
cmovle rax, rdx
and rax, rdi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rsi]
lea rax, qword ptr [rdi]
xor bl, -38
lea di, qword ptr [rdi]
neg rcx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 71
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
