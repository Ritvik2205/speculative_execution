.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
cmovnz rdi, rsi
cmovns edx, edx
test rdx, -1624442902
cmovo si, bx
xor di, ax
bt eax, 5
or di, -18
or dil, -57
cmovnz ax, bx
xor bl, bl
btc rax, rdx
and cl, -22 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
or dx, 87
bts rax, 149
cmovz ecx, eax
cmovle bx, bx
cmovnz dx, bx
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 50
test rcx, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
