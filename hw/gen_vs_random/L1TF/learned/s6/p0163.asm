.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 97
jmp .bb_0.1
.bb_0.1:
or al, dil
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
jp .bb_0.4
jmp .exit_0
.bb_0.4:
sub al, cl
xchg eax, edx
lea bx, qword ptr [rax + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
