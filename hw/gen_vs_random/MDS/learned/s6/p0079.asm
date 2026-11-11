.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
xor al, 8
test al, dl
jmp .bb_0.1
.bb_0.1:
test edi, -1252846009
test sil, dl
test rax, -359674714
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and dl, -73
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and bl, 68
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
or rax, -689609688
xor al, -4
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
xor sil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
