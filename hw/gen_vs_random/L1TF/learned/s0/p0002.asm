.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
sbb dl, cl
add al, 74
sbb dl, bl
or sil, -44
cmp bl, dil
and bl, dil
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
xor dl, cl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
sub dil, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
