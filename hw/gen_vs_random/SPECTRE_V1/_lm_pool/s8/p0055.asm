.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -7
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
cmp bl, al
sbb dil, bl
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 7
add bl, dl
lea cx, qword ptr [rdx + rax]
jmp .bb_0.1
.bb_0.1:
sbb al, -112
add bl, -95
setnle dl
sbb sil, bl
mov dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
