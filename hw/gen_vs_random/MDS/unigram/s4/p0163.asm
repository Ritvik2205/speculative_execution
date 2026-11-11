.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, 146
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
xor dil, -124
and di, di
and edx, -44
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
and rdi, 100
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
or ecx, eax
and rcx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or dl, -21
test di, 71
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
cmovbe esi, edi
btr ecx, edi
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
