.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
xor sil, 94
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and ax, -10351
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and rax, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rax]
not dil
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edi
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
test al, 66
or esi, esi
cmovo ecx, ebx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
test al, 66
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdx
cmovz si, si
or cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
