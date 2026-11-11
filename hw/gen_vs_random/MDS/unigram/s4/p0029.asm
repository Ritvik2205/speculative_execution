.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 52
and dl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rbx]
bts rax, 117
cmovnz rax, rdi
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
xor dl, -125
and cl, -109 # instrumentation
cmovns rax, rax
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
cmovnb edx, edx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
cmovs rsi, rdi
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
cmovnle rcx, rdi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 53
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
