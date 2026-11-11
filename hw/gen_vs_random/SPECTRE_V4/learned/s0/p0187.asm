.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
add cl, sil
sbb al, -43
cmp edx, -95
or al, 27
or sil, -47
inc dil
sbb bl, sil
neg rdx
xor eax, -1772786275
test cl, -31
xor al, al
add sil, 3
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
