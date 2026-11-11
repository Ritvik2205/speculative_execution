.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rbx]
bts rax, 41
add dl, -77 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -54
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
lea cx, qword ptr [rbx + rcx + 100]
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb rdx, -34
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdi]
setnz sil
sbb si, 43
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 97
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
