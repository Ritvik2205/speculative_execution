.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
test cl, 24
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
sbb sil, al
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
