.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and di, ax
or si, 0b1000000000000000 # instrumentation
bsr dx, si
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, esi
test dl, 27
test bl, 65
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
test bl, 65
test bx, 4954
btc bx, 58
jmp .bb_0.1
.bb_0.1:
xor cl, -13
and rcx, 107
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
and sil, -75 # instrumentation
cmovp esi, esi
test ebx, -961564216
btc ebx, eax
and dl, -73
test rbx, 39
and esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
