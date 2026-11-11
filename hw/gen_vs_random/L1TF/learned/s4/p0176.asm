.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add sil, -61
xor bl, dl
and rax, -109
xor sil, bl
jmp .bb_0.2
.bb_0.2:
test cl, 67
xor bx, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
