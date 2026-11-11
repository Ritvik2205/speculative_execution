.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
test ecx, 94
xor sil, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
sbb al, sil
xor ax, 913
sub bl, dil
add bl, sil
sub bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
