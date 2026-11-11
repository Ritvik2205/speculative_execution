.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov cl, bl
mov sil, dl
xor sil, 64
test cl, 52
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test al, -32
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 62
jmp .bb_0.3
.bb_0.3:
or dl, al
cmp di, -78
cmp cl, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
