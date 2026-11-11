.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, dl
sbb eax, -403815802
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
sub al, -3
sub dil, -39
test al, -104
bt ecx, eax
add al, 117
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 16
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
