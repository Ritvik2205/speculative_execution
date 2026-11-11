.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, rsi
xor rax, 459999114
and cl, al
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
xor bl, -27
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
test cl, al
xor di, 93
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
or bl, -62
bt si, ax
and sil, dil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
test bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
