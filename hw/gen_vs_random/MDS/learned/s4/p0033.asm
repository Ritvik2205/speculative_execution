.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
xor dl, dl
and al, 35
and dx, 3
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
xor al, cl
test ax, 4430
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
xor al, 99
test dl, -85
test dl, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 29
and al, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
