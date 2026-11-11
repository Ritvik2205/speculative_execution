.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 13
lea dx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
lea rdx, qword ptr [rbx + rax]
cmovno rax, rcx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 94
add al, -46
and al, al
or dil, -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
