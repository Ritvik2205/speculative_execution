.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, ebx
or cl, dl
xor dl, 71
add bl, -95
lea dx, qword ptr [rcx + rax + 99]
lea rax, qword ptr [rbx + rcx]
test rax, -1638758413
adc cl, bl
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
