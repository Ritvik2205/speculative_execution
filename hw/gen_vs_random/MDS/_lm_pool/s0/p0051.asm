.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, bx
test sil, cl
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and cx, -2
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
xor rdi, -9
xor al, sil
jmp .bb_0.1
.bb_0.1:
or sil, bl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
or dil, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
test esi, 425331143
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
xor al, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
