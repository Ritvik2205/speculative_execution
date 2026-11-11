.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, eax
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
xor di, 66
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
cmovno rdi, rax
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
cmp bl, al
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or dil, cl
test rdx, rbx
bswap rdi
cmovle rax, rbx
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
