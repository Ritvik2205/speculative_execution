.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and dil, -62
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and esi, 31
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
or al, -17
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and dx, 3
or al, -61
xor cl, -13
test al, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
