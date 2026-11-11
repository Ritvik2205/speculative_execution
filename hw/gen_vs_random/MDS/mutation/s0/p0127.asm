.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl di, cx
and bl, 6 # instrumentation
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
test rax, -2052112368
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
cmovo rdi, rbx
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
or al, 25
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 0
and eax, 561041355
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
test dl, bl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
