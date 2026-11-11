.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 11
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and di, 91
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and si, -121
and bl, bl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and bl, dil
test eax, 1287331633
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and sil, 89
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
xor dil, -70
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
