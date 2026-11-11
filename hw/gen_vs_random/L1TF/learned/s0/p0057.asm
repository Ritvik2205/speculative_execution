.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, edi
test di, 6
and al, -68
cmp ax, -21455
sbb sil, -19
jmp .bb_0.1
.bb_0.1:
cmp bl, al
jmp .bb_0.2
.bb_0.2:
lea rax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
