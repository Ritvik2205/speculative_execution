.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
setz bl
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
xor dil, -42
jmp .bb_0.1
.bb_0.1:
test esi, 43
xor bl, dl
xor cl, dl
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
