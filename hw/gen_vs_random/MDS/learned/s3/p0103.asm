.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 78
btc cx, 115
test dl, al
xor bl, -27
xor al, cl
or bl, -125
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
or dil, -71
and al, -55
or al, -24
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
test bl, sil
xor sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
