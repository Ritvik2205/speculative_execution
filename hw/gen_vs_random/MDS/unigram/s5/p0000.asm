.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr edx, 197
bts si, 158
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
test sil, -55
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
bt rdi, rbx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
and dl, 84 # instrumentation
cmovle si, ax
test bl, -114
and rdx, 6
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
and bl, 107 # instrumentation
cmovbe di, bx
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
bt ax, bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and bl, 120 # instrumentation
cmovnle edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
