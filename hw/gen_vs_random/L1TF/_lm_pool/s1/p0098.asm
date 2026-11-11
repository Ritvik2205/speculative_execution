.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
sub dl, -78
test al, 15
jle .bb_0.1
jmp .exit_0
.bb_0.1:
or al, -57
and al, dil
test eax, 645518295
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
