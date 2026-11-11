.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
xor dil, dl
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
and rcx, -63
not dil
or dl, 51
and rax, 498847670
test cl, -113
xor dil, cl
and eax, -829294476
and al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
