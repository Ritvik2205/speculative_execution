.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 9
or dl, dl
test rcx, 58
bt rbx, rbx
or rdi, rsi
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
cmovz rbx, rdx
test ebx, 245771113
cmovz rax, rcx
xor al, -119
not di
cmovnle rbx, rax
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 93
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 93
and cl, -109 # instrumentation
cmovns rax, rax
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
