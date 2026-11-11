.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
sub al, -3
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
setnz dil
xor cl, bl
sub al, cl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and cl, 8
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
