.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 92
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
lea cx, qword ptr [rdx + rdi]
jmp .bb_0.1
.bb_0.1:
test cl, -33
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
sub rcx, 13
cmp cl, al
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
