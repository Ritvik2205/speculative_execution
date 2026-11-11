.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
and bl, -99 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -124
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
cmovb si, bx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
test sil, dl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
not sil
bts rcx, rdx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -86
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
and al, 16 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
and bl, 38 # instrumentation
cmovbe esi, ebx
or dil, -41
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
