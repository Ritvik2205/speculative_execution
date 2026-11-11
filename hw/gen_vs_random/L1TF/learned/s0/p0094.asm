.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
sub al, 26
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
test sil, sil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
sub sil, -99
sub dl, -78
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
