.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 18
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and al, 34 # instrumentation
cmovno eax, esi
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and di, 91
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rbx, 65
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
xor dl, -19
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
bt ax, 76
xor sil, sil
and rax, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rax]
and cl, -85 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 78
cmovnle cx, si
and cl, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
cmovo ecx, ebx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
