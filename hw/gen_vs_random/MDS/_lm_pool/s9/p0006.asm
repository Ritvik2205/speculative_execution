.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, rsi
not bl
xor dil, 8
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
jmp .bb_0.2
.bb_0.2:
and cx, -8
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
or al, dl
xor dil, -124
btc esi, 199
and al, al
or bl, al
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
test rdx, 34
and bl, 68
cmovle cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
