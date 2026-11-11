.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -14
and ax, -4410
or ax, -14271
test edi, -1252846009
xor bl, al
test dl, cl
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
test bl, dil
xor dil, sil
xor bl, cl
jmp .bb_0.1
.bb_0.1:
xor di, 40
test dl, sil
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
