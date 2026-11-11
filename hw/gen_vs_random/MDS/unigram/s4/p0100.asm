.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, 2
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 55
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 20
cmovbe bx, di
or dl, dl
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
cmovz bx, si
btr edx, esi
and cl, -34 # instrumentation
cmovs rsi, rcx
btr rdx, 31
and bl, 56 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and bl, bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and al, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and ecx, -104
and rbx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
and dl, 57 # instrumentation
cmovnb dx, ax
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
