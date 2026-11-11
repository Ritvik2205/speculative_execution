.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, 18
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
cmovbe bx, cx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
cmovs rax, rbx
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
bt esi, eax
test sil, cl
and dl, 17 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
cmovz ecx, edi
bt bx, ax
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
test ebx, -961564216
or dl, cl
btr edx, esi
and al, 2 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
and rbx, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
