.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rcx, sil
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 81
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 51
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 83
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
cmp bl, dil
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
cmp eax, -92285311
cmovz rax, rbx
bt edi, 95
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
cmovnle cx, cx
sub bx, ax
cmovnl rdx, rdi
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdx]
add dl, -99 # instrumentation
not edi
btc edx, 62
btc rax, rdx
add bl, -72
and rdx, 19
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
or eax, 1802312508
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 16
cmovnbe ecx, esi
and cl, sil
dec si
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
cmovle rbx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
movzx edi, dl
sbb al, al
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rcx]
cmovz esi, ebx
adc al, 36
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
test sil, dil
xchg eax, ecx
sbb cl, cl
test ebx, 1263899340
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
