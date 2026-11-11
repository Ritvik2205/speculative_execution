.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 76
neg dil
sbb cx, 3
sub dil, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
test dil, al
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
cmovle rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
