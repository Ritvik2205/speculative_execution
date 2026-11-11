.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 1725503461
test bl, -9
xor al, -89
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and cl, cl
test rax, rsi
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and cl, cl
bt edi, eax
test bl, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
