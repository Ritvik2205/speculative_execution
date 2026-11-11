.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103
and cl, -6
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
xor sil, al
and al, bl
or al, 74
test dil, 46
test sil, dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and dl, -73
or al, 54
test eax, 343548072
test al, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
