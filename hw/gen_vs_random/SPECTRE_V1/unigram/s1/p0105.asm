.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], sil
test dl, -36
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -28
mov esi, 83
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov dl, al
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
and rdx, rdx
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
