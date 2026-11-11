.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
xor rbx, 89
and rax, 1250429750
jmp .bb_0.1
.bb_0.1:
test al, 127
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
or bl, dil
test cl, 91
and di, 99
and di, 99
test dl, cl
test cl, dl
test eax, 1729060510
xor al, cl
test esi, 1857129931
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
