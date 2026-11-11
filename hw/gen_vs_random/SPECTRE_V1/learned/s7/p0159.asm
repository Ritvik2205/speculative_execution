.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 92
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
test rdx, 1657596343
jmp .bb_0.1
.bb_0.1:
cmp bx, 61
and cl, -57
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
