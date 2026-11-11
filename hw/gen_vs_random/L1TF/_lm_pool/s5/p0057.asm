.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, bx
sbb cl, -11
xor eax, -885407671
sbb sil, 19
and rsi, 59
and cl, cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 68
cmp sil, -11
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
test dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
