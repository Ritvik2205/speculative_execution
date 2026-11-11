.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
xor cx, -18
test eax, 1838539683
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
xor bl, 67
or cl, 119
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
xor al, 9
and sil, 74
xor ax, 31969
xor al, 115
xor dil, 8
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
btr ax, si
and al, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
