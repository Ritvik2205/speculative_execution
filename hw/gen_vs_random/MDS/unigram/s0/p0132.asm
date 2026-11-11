.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, si
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
cmovz rax, rcx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 67
and al, -49 # instrumentation
cmovno ax, cx
xor cl, -79
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rcx]
and cl, bl
bt eax, 21
and dl, -107 # instrumentation
cmovz rsi, rdi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and bl, -55 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rsi]
cmovz rsi, rcx
btc rdx, 138
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
