.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 113
sub si, 32
sub rsi, 97
xor al, al
jle .bb_0.1
jmp .exit_0
.bb_0.1:
not bx
sbb rdx, -34
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and dil, sil
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
