.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
test sil, -96
xor dil, 124
test cl, -86
xor bl, -102
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
xor ax, 31969
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
test al, 66
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and al, -103
btc ax, 54
and sil, dil
test si, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
