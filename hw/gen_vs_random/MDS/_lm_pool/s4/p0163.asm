.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
xor dl, -59
test cl, -123
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
not sil
or sil, -78
xor bl, 67
not sil
and cl, -19
and al, dil
test edx, -372470678
xor rdx, -59
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
test cl, 101
bts di, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
