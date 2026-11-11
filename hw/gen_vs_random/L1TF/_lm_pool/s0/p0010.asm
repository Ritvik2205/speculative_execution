.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 75
xor dx, 60
or rax, -82
sbb dil, bl
and eax, -409673666
cmp bx, -21
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 95
sub sil, -99
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rsi]
cmovle rax, rdx
bts eax, 232
xor dx, 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
