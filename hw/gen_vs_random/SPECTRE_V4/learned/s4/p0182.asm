.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -1547540200
movzx cx, bl
test al, -26
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
adc dil, 112
and si, -74
and dl, dil
or bl, al
add dil, al
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
