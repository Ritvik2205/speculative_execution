.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 88
lea bx, qword ptr [rcx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 10
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 25
sub sil, -99
xor dl, al
sbb eax, -1165635662
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
