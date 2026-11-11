.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test sil, -96
jmp .bb_0.2
.bb_0.2:
test cl, 0
or cl, cl
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
test dl, 48
and bl, dil
and dl, cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
not al
test al, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
