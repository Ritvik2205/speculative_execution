.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 85
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and bl, 6 # instrumentation
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ecx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rax
test dl, bl
test rax, -648054011
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
cmovl di, cx
or al, 74
and eax, -85386306
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
cmovo rdi, rbx
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
