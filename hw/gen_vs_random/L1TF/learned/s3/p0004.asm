.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
inc sil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
jmp .bb_0.2
.bb_0.2:
test sil, 29
cmp dl, sil
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdx]
dec al
sbb al, dil
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
xor ax, -16232
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
