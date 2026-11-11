.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl edx, ebx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], bx
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
cmovp dx, bx
or ax, -20176
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 1
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
btr edi, edi
cmovbe dx, ax
and sil, -24 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
or ax, 85
and bl, -56 # instrumentation
cmovnle ebx, edx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 98
xor al, -19
and cl, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
