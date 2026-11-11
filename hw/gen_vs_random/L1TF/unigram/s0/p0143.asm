.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
mul rax
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
inc rax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or dil, -113
sub dil, cl
add bl, -75 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
cmovno si, si
add sil, -95 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
