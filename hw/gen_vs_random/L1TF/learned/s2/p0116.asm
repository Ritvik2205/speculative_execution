.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
sub dl, 105
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 35
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
cmp dil, 14
test rdx, 1
lea rax, qword ptr [rsi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
