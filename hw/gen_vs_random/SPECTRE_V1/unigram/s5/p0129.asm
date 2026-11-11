.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
and esi, esi
sub eax, -882981501
xor al, bl
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 9
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
sub cl, -21
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 17
loope .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -94 # instrumentation
or dil, cl
xchg sil, cl
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 27
lea rax, qword ptr [rcx + rbx + 1]
sbb eax, 1392087754
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
