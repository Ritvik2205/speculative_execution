.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
sbb al, 92
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
not al
and al, cl
btc bx, cx
jmp .bb_0.2
.bb_0.2:
setno sil
xor dx, 95
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
cmovnbe rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
