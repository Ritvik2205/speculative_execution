.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, -372470678
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
xor dx, 3
and rax, -636362975
btr rsi, 207
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
and dil, 84 # instrumentation
cmovbe di, dx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
xor bx, 17
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
cmovl cx, ax
and al, 49
and al, 42 # instrumentation
cmovz esi, ecx
and cl, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
and cl, cl
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
bts ecx, 184
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
