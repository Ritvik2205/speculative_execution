.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
cmp eax, -234754587
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
xor eax, -603819833
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 70
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 39
or rsi, 38
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
or bl, -88
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
