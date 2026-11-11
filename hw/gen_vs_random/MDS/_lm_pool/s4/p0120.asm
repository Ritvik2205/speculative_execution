.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
test dl, dil
xor dil, -3
test eax, 1729060510
test rax, 1207043993
xor al, -19
jmp .bb_0.1
.bb_0.1:
xor al, 122
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
xor dx, 83
and di, 99
or al, 24
and bx, 87
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
bt di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
