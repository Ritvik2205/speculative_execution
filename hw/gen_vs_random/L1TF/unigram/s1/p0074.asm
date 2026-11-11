.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdx, 52
setz dl
sub rsi, 47
or cl, -78
sub rsi, 2
cmovl edx, edi
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
lea ecx, qword ptr [rbx]
btc di, dx
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
or bl, -5
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 79
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 112
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
