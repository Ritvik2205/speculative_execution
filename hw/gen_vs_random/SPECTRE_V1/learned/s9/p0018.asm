.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
xor sil, dl
and rdi, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rdi]
test al, 59
jno .bb_0.1
jmp .exit_0
.bb_0.1:
jb .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
