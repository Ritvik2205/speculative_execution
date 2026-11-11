.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
or al, -57
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
xor dl, sil
test dl, -37
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
xor cl, 89
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
sbb cl, -11
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 74
add bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
