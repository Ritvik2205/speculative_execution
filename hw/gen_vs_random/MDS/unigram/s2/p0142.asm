.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
or sil, al
and rcx, 107
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
and dl, -53 # instrumentation
cmovbe eax, edx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], bx
cmovnbe dx, bx
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 24
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
and bl, 68
xor bl, -61
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
bt rsi, rsi
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 41
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
