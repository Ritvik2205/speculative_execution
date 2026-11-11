.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 114
and bl, cl
dec al
test cl, bl
xchg rdx, rdi
add bl, dl
sub dl, -16
or dl, sil
and dx, -107
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
