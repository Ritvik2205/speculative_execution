.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo ax, cx
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 67
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and bl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rax]
bts rax, rax
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and bl, -30 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovnz ax, bx
and rsi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rsi]
xor sil, 1
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and bx, di
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
or bl, al
bt ecx, 100
btc rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
