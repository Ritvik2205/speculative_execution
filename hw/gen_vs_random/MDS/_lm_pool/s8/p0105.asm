.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, ax
test sil, 17
xor sil, -14
test al, cl
test eax, -409834435
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and cl, dil
bt eax, edi
or al, sil
and cl, cl
xor rax, -1128378406
btr bx, ax
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
or rax, -689609688
bts bx, di
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
