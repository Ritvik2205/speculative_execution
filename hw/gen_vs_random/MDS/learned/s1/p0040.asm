.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -1971658905
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
bt ebx, esi
xor cl, dl
and di, si
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
bt eax, eax
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
and al, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
or rbx, -124
cmovnbe edi, eax
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and al, 73
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
or al, -8
xor al, -119
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdi], si
cmovz rbx, rdx
and dl, cl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
xor cl, dl
jmp .bb_0.1
.bb_0.1:
xor cl, dl
sub cl, cl
or dl, al
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
and dil, al
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 14
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 46
cmovz rdi, rdx
and al, bl
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
add si, 94
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
test ax, 5320
and al, -37
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
sub dl, cl
cmovp cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
