.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 359647041
and rdx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, esi
test ecx, -1843375753
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
test rcx, -613256812
and edi, 23
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 38
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or eax, eax
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 31
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and dl, 120 # instrumentation
cmovnle cx, dx
and esi, esi
and bl, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
and rdi, rbx
or al, 25
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
