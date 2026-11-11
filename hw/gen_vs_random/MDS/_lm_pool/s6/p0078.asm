.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -58
test al, cl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 29
xor al, -19
and di, 91
jmp .bb_0.1
.bb_0.1:
or bl, al
and ax, -16061
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
test eax, -571234566
bt dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
