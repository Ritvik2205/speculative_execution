.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -62 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], si
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 72
and dl, bl
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and bl, -82 # instrumentation
cmovz edx, edi
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
bts dx, 50
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
bt rax, rdx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 29
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
cmovo ecx, esi
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
