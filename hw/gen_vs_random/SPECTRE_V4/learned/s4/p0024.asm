.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, -107
and al, 100
cmp al, -1
sub dl, cl
mov bl, al
or eax, 143573881
xor eax, -1772786275
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
sub dl, 107
test bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
