.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -77
cmovz rsi, rdx
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
test ebx, 245771113
xor ecx, 1
xor dl, -125
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and al, 73
and dl, -73 # instrumentation
cmovns rdx, rsi
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or cl, 100
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
bt rax, rdx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 95
bts eax, ecx
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], eax
and dl, 84 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
and bl, 44 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
