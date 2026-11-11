.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov sil, dl
add cl, bl
and al, -68
sub dil, dl
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
add al, 117
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
