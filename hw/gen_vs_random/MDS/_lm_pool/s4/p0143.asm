.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 5001
xor sil, 110
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
test esi, 425331143
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 40
test al, 127
test rsi, 52
and di, 91
or sil, dl
jmp .bb_0.1
.bb_0.1:
cmovnp rax, rdx
and dil, -39
xor dl, -43
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
xor sil, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
