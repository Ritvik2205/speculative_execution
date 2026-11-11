.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
sbb rax, 717206440
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 103
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 7
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 34
lea ebx, qword ptr [rbx + rcx + 98]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
cmovnz rax, rdi
or dil, dil
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
xor si, 90
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 58
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
