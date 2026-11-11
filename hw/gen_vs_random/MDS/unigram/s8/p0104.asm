.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
bts ax, 22
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rsi
and al, -3 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
cmovp ax, ax
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
test dil, 46
and rax, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], eax
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
cmovnb cx, ax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and al, al
xor cl, 83
cmovns edi, edi
cmovnbe esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
