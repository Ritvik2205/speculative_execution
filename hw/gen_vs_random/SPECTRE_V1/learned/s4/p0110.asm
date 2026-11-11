.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 100
cmp dl, bl
bts cx, 65
and al, -23
and bl, 87
sub dil, bl
dec bl
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dl
xor rdi, 29
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
