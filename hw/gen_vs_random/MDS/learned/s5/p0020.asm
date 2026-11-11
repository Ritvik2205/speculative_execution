.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 65
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
xor rsi, -117
or rcx, 54
and rcx, -63
xor dl, cl
and dil, bl
test rsi, 98
not sil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], dx
jmp .bb_0.1
.bb_0.1:
xor cl, -13
xor cl, dl
and ax, -16061
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
