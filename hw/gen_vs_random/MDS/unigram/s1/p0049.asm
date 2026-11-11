.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and cl, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and al, -97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
btr eax, ecx
cmovb ax, si
cmovz cx, cx
and dl, 57 # instrumentation
cmovnb si, cx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], di
test esi, edx
bt esi, ebx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
cmovns dx, bx
or bx, 21
btc esi, 199
test edi, -1252846009
test dl, bl
xor sil, -46
cmovbe edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
