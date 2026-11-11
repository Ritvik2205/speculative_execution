.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
xor al, 16
xor cl, al
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
or dl, bl
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cbw
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
