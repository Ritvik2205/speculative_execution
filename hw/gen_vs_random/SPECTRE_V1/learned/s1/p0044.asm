.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -75
sbb al, 49
xor al, al
sub ax, -15315
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 75
lea cx, qword ptr [rdi + rbx + 48694]
sub dil, -32
lea rcx, qword ptr [rdx + rax + 25]
lea rax, qword ptr [rdx + rbx + 35]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
sbb al, bl
cmp dl, -115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
