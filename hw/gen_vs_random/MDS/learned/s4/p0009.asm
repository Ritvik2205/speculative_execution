.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -24
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
xor ax, 23633
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
or cl, -77
and ax, 29207
and bl, bl
xor sil, 27
jmp .bb_0.1
.bb_0.1:
and al, 84
or al, sil
or di, 29
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
