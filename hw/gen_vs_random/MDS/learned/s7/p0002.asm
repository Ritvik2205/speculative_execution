.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and ax, 13090
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
test dil, -51
test dl, -85
and cx, -8
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and al, 84
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
xor ax, -12492
or rdx, -48
and rax, 627810357
or dil, sil
test al, -7
and rdx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdx]
bt dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
