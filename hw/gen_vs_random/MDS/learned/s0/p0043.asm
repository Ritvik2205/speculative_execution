.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
or cl, bl
or sil, dil
or ax, 127
add sil, 80
xor cl, bl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
and rax, 41
or sil, al
test esi, 1857129931
test dl, -119
test bl, cl
jmp .bb_0.1
.bb_0.1:
test al, 22
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
