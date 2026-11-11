.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 71
xor ax, -4010
xor al, 9
xor rcx, 71
and ax, 31082
xor cl, dil
or dil, dil
xor sil, -14
xor rcx, 71
test al, bl
xor cx, -18
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and di, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
