.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, dil
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
and al, -23
or al, sil
cmp dil, cl
sub ax, -17837
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
