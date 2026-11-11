.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
test al, 127
and al, 84
test cl, dl
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
test al, -7
test esi, 425331143
and cl, -111
or al, dil
xor cx, -18
test sil, al
xor rdx, -59
xor al, dil
xor sil, 110
or sil, dil
or al, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
