.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 17
test al, -75
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
sub sil, cl
movsx di, cl
xor al, dil
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
sub rdi, rdx
and al, dil
add al, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
