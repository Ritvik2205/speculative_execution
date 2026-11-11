.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 27
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
btr si, ax
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
and ax, 29207
and cl, -19
xor cl, 15
or edx, ecx
or bl, cl
btr ax, bx
xor dx, 12
and cl, -19
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
test dl, dil
test rsi, 6
or al, bl
or dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
