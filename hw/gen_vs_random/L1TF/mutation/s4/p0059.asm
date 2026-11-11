.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and di, si
adc bx, cx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 21177
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
sbb rdx, 98
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
inc dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
inc rdx
or rax, 699028911
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
