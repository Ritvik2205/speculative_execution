.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 33
test bl, dil
bt rdi, rcx
xor al, 38
jmp .bb_0.1
.bb_0.1:
bt edi, edx
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
lea dx, qword ptr [rax + rbx]
dec sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
