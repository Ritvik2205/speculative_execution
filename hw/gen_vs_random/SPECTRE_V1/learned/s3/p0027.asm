.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 112 # instrumentation
adc al, dl
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
sub bl, -19
mov al, dl
add bl, bl
and dil, bl
lea rdi, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
test al, 84
add bl, -95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
