.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 15
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 98
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
cmp ax, 7046
jmp .bb_0.1
.bb_0.1:
sbb sil, al
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sub rsi, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
