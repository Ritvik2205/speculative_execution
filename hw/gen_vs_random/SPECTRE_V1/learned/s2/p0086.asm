.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
adc dx, -112
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmp sil, dl
lea bx, qword ptr [rcx]
sub bl, cl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
cmp al, sil
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
