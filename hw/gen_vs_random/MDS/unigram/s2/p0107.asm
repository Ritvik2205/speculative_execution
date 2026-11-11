.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo bx, bx
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
and bl, -72 # instrumentation
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 40
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
test dil, cl
test cl, 15
test eax, 758789512
cmovbe rcx, rbx
and cl, 127
or rsi, 67
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and cl, 127
test eax, 758789512
and ax, 28417
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -47
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 55
cmovnb rdi, rdi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
