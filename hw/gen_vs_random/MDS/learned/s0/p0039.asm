.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 41
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
xor dil, -124
jmp .bb_0.1
.bb_0.1:
bts rax, 77
and sil, -69
xor rdx, -59
xor di, 93
and cx, -2
test sil, al
test al, bl
test eax, -571234566
btc esi, 199
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
