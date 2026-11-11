.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rbx, rbx
xor al, 55
or dl, dl
and al, 84
xor sil, 94
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
btr si, bx
and si, -121
and cl, cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
or al, 37
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
jmp .bb_0.2
.bb_0.2:
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
