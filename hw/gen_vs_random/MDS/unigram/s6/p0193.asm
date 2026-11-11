.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rcx, -613256812
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ecx
and al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
test al, 91
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
test cx, ax
and cl, 114 # instrumentation
cmovz di, cx
btc rdx, rdx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdx]
and bl, 68
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and bl, 49 # instrumentation
cmovp rax, rbx
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
xor bl, al
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
