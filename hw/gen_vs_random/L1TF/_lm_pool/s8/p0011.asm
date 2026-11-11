.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
cbw
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test dl, 84
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
