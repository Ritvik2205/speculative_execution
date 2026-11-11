.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dl
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
btr ax, cx
and dl, -73
not sil
xor ax, -16696
btr di, 89
and dil, 125
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
xor eax, 571592471
btc si, 99
or sil, -78
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
