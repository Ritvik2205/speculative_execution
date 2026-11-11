.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, eax
btr cx, dx
and al, dil
and sil, -9
or al, -58
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
or dl, -89
test sil, -96
xor bl, al
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
test dx, 16353
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
