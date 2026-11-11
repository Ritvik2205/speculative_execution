.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 71
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
sbb bl, -98
sbb al, 31
test edi, -1380439873
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rax
test dl, -102
or dl, cl
sub dil, cl
cmp al, -116
sbb dl, al
dec cl
and al, 92
add al, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
