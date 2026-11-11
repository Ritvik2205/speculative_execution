.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 38
lea rbx, qword ptr [rcx]
test sil, 47
cmp bx, 14
sub cx, 42
test al, -75
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
sbb edx, -8
lea rcx, qword ptr [rbx + rdx]
xor dil, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
