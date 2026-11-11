.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], edi
xor rdx, -59
test cl, 73
and al, cl
btr ax, si
and al, 84
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
test dl, al
jmp .bb_0.1
.bb_0.1:
test cl, dl
xor cl, dl
and bl, sil
xor sil, -14
xor rdx, -59
not sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
