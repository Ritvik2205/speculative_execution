.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 91
lea rsi, qword ptr [rax + rdx]
sub bl, sil
adc cx, ax
cwd
add cl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 34
js .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rax
lea si, qword ptr [rax + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 84
xchg dl, sil
sbb sil, al
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
