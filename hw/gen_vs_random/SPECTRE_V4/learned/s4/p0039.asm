.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
not rdx
add al, 40
and al, -124
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
cmp cl, -80
test bl, -29
test sil, 1
test al, 27
and al, 59
sub al, 59
sbb al, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
