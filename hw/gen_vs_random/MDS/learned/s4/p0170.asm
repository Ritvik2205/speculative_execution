.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], eax
bt si, cx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and cl, -22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and dl, -107 # instrumentation
cmovz rax, rdi
cmovo edi, ebx
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
xor dl, -68
and al, -37
test dil, -72
bts rcx, 115
cmovno esi, ecx
and dl, sil
test bl, dl
test rax, 1732677821
and sil, dl
or rcx, 41
adc bl, 37
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 11
cmovz rdx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 7
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rcx
cmp dil, cl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 74
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
xor rsi, 5
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
xchg bl, dil
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
imul esi, ebx
bswap edi
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
imul rsi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
