.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
sub al, dil
and di, 56
xor cl, 89
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
xor bl, dil
add cl, -20
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
test al, dl
lea rdx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
