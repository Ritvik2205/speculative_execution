.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -49 # instrumentation
cmovno cx, bx
cmovnb dx, cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
cmovl rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
cmovb rbx, rdi
and dil, al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
and dl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
cmovz si, di
test al, -59
btr rdx, 194
cmovnbe ax, bx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8830
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and dil, bl
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and dl, -107 # instrumentation
cmovz rax, rbx
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
cmovnle ecx, ebx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and al, 73
test dil, -72
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdx
and ax, 30884
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
