.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
add bl, 48 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 9
sbb eax, eax
sbb bl, dil
cmp eax, eax
inc rax
cmovle rcx, rax
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 72
setnp cl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
test cl, cl
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
btc ebx, 11
btr rax, 34
btc ecx, ecx
lea rcx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
