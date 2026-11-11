.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -4010
or sil, -78
test rdi, 69
and ax, 29207
and al, sil
and bl, cl
xor ax, -6793
and bl, dl
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or cl, 119
jmp .bb_0.1
.bb_0.1:
xor al, 9
test eax, 158941032
or rsi, 58
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
or cx, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
