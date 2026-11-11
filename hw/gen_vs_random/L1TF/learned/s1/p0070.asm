.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx], -44
xor di, 60
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdi
or cl, 105
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
bt di, bx
and di, 29
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
