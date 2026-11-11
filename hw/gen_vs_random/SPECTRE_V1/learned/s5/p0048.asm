.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
xor edi, 115
sbb al, -114
add al, -109
test al, 59
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
and cl, -57
mov cl, sil
cmp cl, 46
sub sil, -18
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
