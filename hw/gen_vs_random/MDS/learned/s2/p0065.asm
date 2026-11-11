.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and rcx, -63
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and sil, 74
xor rcx, 71
xor cl, al
jmp .bb_0.1
.bb_0.1:
test dl, 9
or cl, 39
and dil, 125
test rsi, 74
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
xor di, 93
xor al, dil
xor dl, 8
or sil, dil
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
