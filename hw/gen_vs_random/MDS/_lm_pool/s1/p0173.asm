.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
not dil
or al, bl
and al, -8
or al, sil
xor dl, al
test eax, -409834435
xor dl, -43
xor al, -4
and al, 75
btc rcx, 11
test dil, 46
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
or ax, -14271
xor dil, -3
xor al, 9
btc edi, 230
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
