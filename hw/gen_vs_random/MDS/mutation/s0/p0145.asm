.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 67
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], bx
and bl, 26 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
cmovz eax, ebx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
and al, 70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
cmovnz dx, dx
cmovno rbx, rsi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -83
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rsi]
test bx, 4954
jmp .bb_0.1
.bb_0.1:
bts dx, cx
test esi, 425331143
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 2
btr rbx, 93
and dl, -40 # instrumentation
cmovp edx, edx
jmp .bb_0.2
.bb_0.2:
and dx, si
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
or cl, 7
cmovnbe ecx, edx
xor ecx, ecx
cmovl rbx, rdi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and al, -38 # instrumentation
cmovnb si, si
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
cmovnz rbx, rsi
cmovnz ebx, ecx
and al, -103
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
test cl, dl
test rax, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
or rdx, -109
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
